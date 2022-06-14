import 'dart:io';
import 'package:coffee_app_ui/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 9.0),
      child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Platform.isIOS ? Icons.arrow_back_ios_outlined : Icons.arrow_back_outlined,
            color: kTextColor,
            size: 15,
          ),
          style: TextButton.styleFrom(
              backgroundColor:  const Color(0XFF1E222B),
              //11141A 101318
              minimumSize: const Size(40.0, 40.0),
              maximumSize: const Size(40.0, 40.0),
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              )
          )
      ),
    );
  }
}


class Button2 extends StatelessWidget {
  const Button2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
          onPressed: null,
          child: const Icon(
            Icons.favorite_sharp,
            color: kTextColor,
            size: 15,
          ),
          style: TextButton.styleFrom(
              backgroundColor:  const Color(0XFF1E222B),
              //11141A 101318
              minimumSize: const Size(40.0, 40.0),
              maximumSize: const Size(40.0, 40.0),
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              )
          )
      ),
    );
  }
}