import 'package:flutter/material.dart';

import '../constant.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        "Message",
        style:TextStyle(
          color:Constant.pinkButton,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        )
      )
    );
  }
}