import 'package:flutter/material.dart';
import '../utilities/coffee_tiles.dart';
import '../utilities/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;
  void onTap (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:  const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.menu,
            size: 30.0,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 17.0),
            child: CircleAvatar(
              child: Icon(
                Icons.person,
                size: 30.0,
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 7,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTap,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: kTextColor,
          backgroundColor: kBackgroundColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: ''
            )
          ]
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const SizedBox(
                  width: 250.0,
                  child: Text(
                    'Find the best coffee for you',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                const SizedBox(
                  height: 27.0,
                ),
                const TextField(
                  cursorColor: Color(0XFFD07842),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0XFF14191F),
                    hintText: 'Find your coffee..',
                    hintStyle: TextStyle(fontSize: 15.0),
                    prefixIcon: Icon(Icons.search, size: 30.0,),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFF0C0F14)
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0XFF0C0F14)
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    )
                  ),
                ),
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    labelColor: const Color(0XFFD07842),
                    unselectedLabelColor: const Color(0XFF98999B),
                    labelPadding: const EdgeInsets.only(left: 9, right: 20),
                    controller: _tabController,
                    labelStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                    ),
                    isScrollable: true,
                    indicatorColor: kPrimaryColor,
                    tabs: const [
                      Tab(text: 'Cappuccino',),
                      Tab(text: 'Espresso',),
                      Tab(text: 'Latte',),
                      Tab(text: 'Flat White',)
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 270,
                  // width: 200,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      SizedBox(
                        height: 270,
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: const [
                            CoffeeTile0(content: 'With Oat Milk', price: '4.20', image: 'cappucino.jpg',),
                            CoffeeTile(image: 'latte.jpg', content: 'With Chocolate', price: '3.14', ),
                            CoffeeTile(image: 'milk coffee.jpg', content: 'With Milk', price: '3.47',)
                          ],
                        ),
                      ),
                      const Center(child: Text('Currently not available.')),
                      const Center(child: Text('Currently not available.')),
                      const Center(child: Text('Currently not available.'))
                    ],
                  ),
                ),
                const SizedBox(height: 50,),
                const Text(
                  'Special for you',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight:FontWeight.w500
                  ),
                ),
                const SizedBox(height: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    CoffeeSpecials()
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}




