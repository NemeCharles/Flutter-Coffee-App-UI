import 'package:coffee_app_ui/screens/purchase_screen.dart';
import 'package:coffee_app_ui/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeTile0 extends StatelessWidget {
  const CoffeeTile0({
    Key? key, required this.content, required this.price, required this.image,
  }) : super(key: key);

  final String image;
  final String content;
  final String price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => PurchaseScreen(image: image, price: price, content: content,))
        );
      },
      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      child: Container(
        width: 165,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
                colors: [
                  Colors.grey.withOpacity(0.2),
                  Colors.grey.withOpacity(0)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 10.0, right: 10.0),
              child: Container(
                  height: 140,
                  width: 155,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/$image')
                    ),
                  ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(20)
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                            Icons.star,
                          size: 11,
                          color: kPrimaryColor,
                        ),
                        SizedBox(width: 2,),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700
                          ),
                        )
                      ],
                    )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, top: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Cappuccino',
                    style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 0.7
                    ),
                  ),
                  Text(
                    content,
                    style: const TextStyle(letterSpacing: 0.7, color: kTextColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0,left: 22.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$',
                        style: TextStyle(
                            color:kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      const SizedBox(width: 2,),
                      Text(
                        price,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.7
                        ),
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: null,
                      child: const Icon(Icons.add, color: Colors.white,),
                      style: TextButton.styleFrom(
                          backgroundColor:  kPrimaryColor,
                          minimumSize: const Size(40.0, 40.0),
                          maximumSize: const Size(40.0, 40.0),
                          elevation: 7,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                      )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({
    Key? key, required this.image, required this.content, required this.price,
  }) : super(key: key);

  final String image;
  final String content;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => PurchaseScreen(image: image, price: price, content: content,))
          );
        },
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              gradient: LinearGradient(
                  colors: [
                    Colors.grey.withOpacity(0.2),
                    Colors.grey.withOpacity(0)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              )
          ),
          width: 165,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0,left: 10, right: 10),
                child: Container(
                    height: 140,
                    width: 155,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/$image')
                        )
                    ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                topRight: Radius.circular(20)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.star,
                              size: 11,
                              color: kPrimaryColor,
                            ),
                            SizedBox(width: 2,),
                            Text(
                              '4.5',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, top: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Cappuccino',
                      style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 0.7
                      ),
                    ),
                    Text(
                      content,
                      style: const TextStyle(letterSpacing: 0.7, color: kTextColor),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0,left: 22.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        const SizedBox(width: 2,),
                        Text(
                          price,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.7
                          ),
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: null,
                        child: const Icon(Icons.add, color: Colors.white,),
                        style: TextButton.styleFrom(
                            backgroundColor:  kPrimaryColor,
                            minimumSize: const Size(40.0, 40.0),
                            maximumSize: const Size(40.0, 40.0),
                            elevation: 7,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CoffeeSpecials extends StatelessWidget {
  const CoffeeSpecials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        // color: Colors.grey.withOpacity(0.1)
          gradient: LinearGradient(
              colors: [
                Colors.grey.withOpacity(0.18),
                Colors.grey.withOpacity(0.08)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 80,
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/latte.jpg')
                )
            ),
          ),
          const SizedBox(
            width: 150,
            child: Text(
              '5 Coffee Beans You Must Try !',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
              ),
            ),
          )
        ],
      ),
    );
  }
}
