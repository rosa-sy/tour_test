import 'package:flutter/material.dart';

import '../constant.dart';

class Favorate extends StatelessWidget {
  const Favorate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        "Favorate ",
        style:TextStyle(
          color:Constant.pinkButton,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        )
      )
    );
  }
}