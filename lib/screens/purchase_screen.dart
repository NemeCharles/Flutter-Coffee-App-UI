import 'dart:ui';
import 'package:coffee_app_ui/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utilities/buttons.dart';

enum Sizes {
  small,
  medium,
  large
}

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({Key? key, required this.image, required this.price, required this.content}) : super(key: key);
  final String image;
  final String price;
  final String content;

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {

  Sizes selectedSize = Sizes.small;

  void selectSize (Sizes newSize) {
    setState(() {
      selectedSize = newSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  // MEDIA QUERY MEASUREMENT (Use in place of Expanded Widget)
                  // height: size.height * 0.52,
                  // width: size.width - 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/${widget.image}')
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Button1(),
                          Button2()
                        ],
                      ),
                      Container(
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        width: size.width,
                        child: Stack(
                         children: [
                           Container(),
                           Positioned(
                             top: 0,
                             child:  ClipRRect(
                               borderRadius: const BorderRadius.only(
                                 topLeft: Radius.circular(30),
                                 topRight: Radius.circular(30),
                                 bottomRight: Radius.circular(20),
                                 bottomLeft: Radius.circular(20)
                               ),
                               child: BackdropFilter(
                                 filter: ImageFilter.blur(sigmaX: 5, sigmaY: 7,),
                                 child: Container(
                                   height: 130,
                                   width: size.width - 22,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(20)
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 25.0),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             const Text(
                                               'Cappuccino',
                                               style: TextStyle(
                                                   fontSize: 34,
                                                   fontWeight: FontWeight.w500
                                               ),
                                             ),
                                             const SizedBox(height: 4,),
                                             Text(
                                               widget.content,
                                               style: const TextStyle(
                                                   color: kTextColor,
                                                   fontSize: 17,
                                                   letterSpacing: 0.7
                                               ),
                                             ),
                                             const SizedBox(height: 15,),
                                             Row(
                                               children: const [
                                                 Icon(
                                                   Icons.star,
                                                   size: 19,
                                                   color: Color(0XFFD07842),
                                                 ),
                                                 SizedBox(width: 6,),
                                                 Text(
                                                   '4.5',
                                                   style: TextStyle(
                                                       fontSize: 17,
                                                       fontWeight: FontWeight.w500
                                                   ),
                                                 ),
                                                 SizedBox(width: 4,),
                                                 Text(
                                                   '(6,986)',
                                                   style: TextStyle(
                                                       color: kTextColor,
                                                       fontSize: 10
                                                   ),
                                                 )
                                               ],
                                             )
                                           ],
                                         ),
                                         Column(
                                           children: [
                                             Row(
                                               children: const [
                                                 CoffeeTags(icon: Icons.coffee_sharp, text: 'Coffee'),
                                                 SizedBox(width: 10,),
                                                 CoffeeTags(icon: Icons.water_drop, text: 'Milk',),
                                               ],
                                             ),
                                             const SizedBox(height: 13,),
                                             Container(
                                               width: 100,
                                               height: 34,
                                               decoration: BoxDecoration(
                                                   color: const Color(0XFF101318),
                                                   borderRadius: BorderRadius.circular(10)
                                               ),
                                               child: const Center(child: Text(
                                                 'Medium Roasted',
                                                 style: TextStyle(
                                                     fontSize: 13,
                                                     color: kTextColor
                                                 ),
                                               )),
                                             )
                                           ],
                                         )
                                       ],
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           )
                         ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Description',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 16,
                          letterSpacing: 0.7
                        ),
                      ),
                      const SizedBox(height: 15,),
                      const Text(
                        'A Cappuccino is a coffee-based drink made primarily from espresso and milk',
                        style: TextStyle(
                          fontSize: 17,
                          height: 2
                        ),
                      ),
                      const SizedBox(height: 35,),
                      const Text(
                        'Size',
                        style: TextStyle(
                            color: kTextColor,
                            fontSize: 16,
                            letterSpacing: 0.7
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CoffeeSizeSelector(
                            selectedSize: selectedSize,
                            letter: 'S',
                            size: Sizes.small,
                            selectSize: () {
                                selectSize(Sizes.small);
                            },
                          ),
                          CoffeeSizeSelector(
                            selectedSize: selectedSize,
                            letter: 'M',
                            size: Sizes.medium,
                            selectSize: () {
                                selectSize(Sizes.medium);
                            },
                          ),
                          CoffeeSizeSelector(
                            selectedSize: selectedSize,
                            letter: 'L',
                            size: Sizes.large,
                            selectSize: () {
                                selectSize(Sizes.large);
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Price',
                                style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 16,
                                  letterSpacing: 0.7
                                ),
                              ),
                              const SizedBox(height: 2,),
                              Row(
                                children: [
                                  const Text(
                                    '\$',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Color(0XFFD07842),
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  const SizedBox(width: 2,),
                                  Text(
                                    widget.price,
                                    style: const TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                           TextButton(
                            onPressed: null,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(const Color(0XFFD07842)),
                              minimumSize: MaterialStateProperty.all<Size>(const Size(230, 57)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                )
                              )
                            ),
                            child: const Text(
                              'Buy Now',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CoffeeSizeSelector extends StatelessWidget {
  const CoffeeSizeSelector({
    Key? key, required this.selectedSize, required this.letter, required this.size, required this.selectSize,
  }) : super(key: key);

  final Sizes size;
  final Sizes selectedSize;
  final String letter;
  final VoidCallback selectSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectSize,
      child: OutlinedButton(
          onPressed: null,
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(const Size(90, 30)),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: size == selectedSize? const Color(0XFFD07842) :  kBackgroundColor
            )
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
              size == selectedSize? kBackgroundColor : const Color(0XFF141821)
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
              size == selectedSize? const Color(0XFFD07842) : const Color(0XFF98999B)
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
          )
        ),
        child: Text(
          letter,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}

class CoffeeTags extends StatelessWidget {
  const CoffeeTags({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
        width: 43,
        decoration: BoxDecoration(
          color: const Color(0XFF101318),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 15, color: kPrimaryColor),
            const SizedBox(height: 2,),
            Text(
              text,
              style: const TextStyle(
                fontSize: 10,
                letterSpacing: 0.5,
                color: kTextColor
              ),
            )
          ],
        )
    );
  }
}




