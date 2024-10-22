import 'package:flutter/material.dart';

import '../constant.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child:Text(
        "More",
        style:TextStyle(
          color:Constant.pinkButton,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        )
      )
    );
  }
}