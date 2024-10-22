import 'package:flutter/material.dart';

// import 'dart:js'as js;

import '../constant.dart';
import '../models/cardd.dart';

class CardSection extends StatelessWidget {
  const CardSection({

    super.key,
    required this.cardd,
  });

  final Cardd cardd;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 350,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [ 
          BoxShadow(
             color: Constant.grayButton.withOpacity(0.1),
             offset: Offset(2.2,2.6),
             blurRadius: 0.1,
             spreadRadius: 0.6,
  
)]

        
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          //img project
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            
            child: Image.asset(
            
              cardd.image,
            // width:280,
              width: 300,
            height: 180,
            fit:BoxFit.fitWidth,
            
            
            ),
          ),
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
            child: Text(
              cardd.title!,
            style:TextStyle(
              fontWeight: FontWeight.w600,
            
          
            ),
            ),
          ),
          //sub title
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  cardd.location,
                style:const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12 ,
                  // color:Constant().pinkButton,
                          
                ),
                ),
                Icon(Icons.location_on),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  cardd.date,
                style:const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12 ,
                  // color:Constant().pinkButton,
                          
                ),
                ),
                Icon(Icons.date_range_outlined),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      "  ليلة / SAR ${cardd.price}  ",
                    style:const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12 ,
                      // color:Constant().pinkButton,
                              
                    ),
                    ),
                  ],
                ),
                Spacer(),
                
              
              Column(
                children: [
                   SizedBox(width: 5,),
                  Icon(Icons.man_3_outlined,color:Constant.pinkButton),
                  SizedBox(width: 5,),
                  
                ],),
                Text("${cardd.person}"),
              Column(
                children: [
                   SizedBox(width: 5,),
                  Icon(Icons.bed,color:Constant.pinkButton,),
                   SizedBox(width: 5,),
                 
                ],),
                 Text("${cardd.bed}"),
              Column(
                children: [
                   SizedBox(width: 5,),
                  Icon(Icons.bathtub,color:Constant.pinkButton),
                   SizedBox(width: 5,),
                  
                ],),
                Text("${cardd.bath}"),
        ],
        ),
          ),
          // const Spacer(),

          //footer
        

          
        ],
      ),
    );
  }
}