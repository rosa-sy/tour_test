import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tour_interface/constant.dart';
import 'package:tour_interface/models/cardd.dart';
import 'package:tour_interface/widget/nav_bar.dart';

import '../widget/card_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            welcom(),
            searchField(),
            topBar(),

            Container(
              padding:const EdgeInsets.fromLTRB(25, 20, 25, 60),
              child:Wrap(
                          spacing: 25,
                          runSpacing: 25,
                          children: [
                            for(int i=0; i<cardDepartment.length;i++)
                            CardSection(
                              cardd: cardDepartment[i],),
                          
                          ],
                        ),
            ),
          
              
            // NavigatBar(),
          ],
        ),
      ),
    );
  }

  Padding welcom() {
    return Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10,0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                 CircleAvatar(
                  foregroundImage: AssetImage("assets/room1.png"),
                 ),
                 Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("مرحبا"),
                  Text("Ali"),
                ]
                ),
               ]),
          );
  }

  Padding topBar() {
    return Padding(
            padding: EdgeInsets.all(8),
          child:Row(
            
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            
            TextButton(
              onPressed: (){},
              child: Text("شاليه "),
              style:TextButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: 18,
                ),
              ),
              ),
            TextButton(
              onPressed: (){},
              child: Text(" فيلا  "),
              style:TextButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: 18,
                  ),
              ),
              ),
            TextButton(
              onPressed: (){},
              child: Text("شقة  "),
              style:TextButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: 18,
                   ),
              ),
              ),
            Container(
              child: TextButton(
                onPressed: (){},
                child: Text(" الكل  "),
                style:TextButton.styleFrom(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                ),
                decoration: BoxDecoration(
                                  color:Constant.pinkButton,
                  borderRadius: BorderRadius.circular(25),
                ),
            ),

          ],
          ),
          );
  }

  Container searchField() {
    return Container(
      margin:EdgeInsets.only(top:30,left:15,right: 15),
      child:TextField(
        
        
        decoration:InputDecoration(
          // filled: true,
          
          fillColor:Colors.white,
          contentPadding: EdgeInsets.only(right:15,top:15,bottom:15),
          hintText: "اختر المدينة ",
          hintStyle: TextStyle(
            fontSize:14,
            // color:Colors.grey,
          ),
          
            prefixIcon: Container(
              width: 200,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:CrossAxisAlignment.end,
                  children: [
                  Container(
                    
                    width:120,
                    height: 40,
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Constant.pinkButton,
                      
                      // border: (1),
                    ),
                    
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: CircleAvatar(
                              
                              backgroundColor: Colors.white,
                              // radius: 0.5,
                              
                              child: Icon(Icons.filter_alt_sharp,color:Constant.pinkButton,)),
                         ),
                      





                         TextButton(
                            onPressed: (){},

                            child: Text(
                              "تصفية",
            
                              style: TextStyle(
                                
                                color:Colors.white,
                                
                                fontSize: 14,
                                ),
                                ),
                                
                                
                            ),
                        
                        
                      ],
                    ),
                    ),
              
              
                ]),
    
        ) ,

        ),
          suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.location_on),
            ),
      
    ),
    
    ),
    );
  }
}