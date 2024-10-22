import 'package:flutter/material.dart';

import '../constant.dart';

class MyRoom extends StatelessWidget {
  const MyRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        "My Room",
        style:TextStyle(
          color:Constant.pinkButton,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        )
      )
    );
  }
}