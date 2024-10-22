import 'package:flutter/material.dart';
import 'package:tour_interface/constant.dart';
import 'package:tour_interface/main.dart';
import 'package:tour_interface/pages/favorate.dart';
import 'package:tour_interface/pages/home.dart';
import 'package:tour_interface/pages/messages.dart';
import 'package:tour_interface/pages/more.dart';
import 'package:tour_interface/pages/myroom.dart';

class NavigatBar extends StatefulWidget {
  const NavigatBar({super.key});

  @override
  State<NavigatBar> createState() => _NavigatBarState();
}

class _NavigatBarState extends State<NavigatBar> {
 int _currentPageIndex = 2;

final List<Widget> pages=[
  Favorate(),
  Messages(),
  HomePage(),
  MyRoom(),
  More(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
     body: pages[_currentPageIndex],
     bottomNavigationBar: BottomNavigationBar(
      fixedColor: Constant.pinkButton,
      unselectedItemColor: Constant.grayButton,
      showUnselectedLabels: true,
          currentIndex: _currentPageIndex,
          onTap: (index){
            setState(() {
              _currentPageIndex=index;
            });
          },
          items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'المفضلة', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline_rounded),
            label: 'الرسائل',
            
          ),
          BottomNavigationBarItem(
            // selectedIcon: Icon(Icons.home_sharp),
            icon: Icon(Icons.home_rounded),
            label: 'الرئيسية',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.date_range_sharp),
            label: 'حجوزاتي',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'المزيد',
            
          ),
          
        ],
      ),
      floatingActionButton:   Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                
                height: 40,
                width: 100,
                child: FloatingActionButton(
                  backgroundColor: Constant.pinkButton,
                  onPressed: (){},
                  child:const Row(children: [
                    SizedBox(width: 10,),
                    Icon(Icons.map,color:Colors.white),
                    SizedBox(width: 10,),
                    Text("الخريطة",
                    style: TextStyle(color:Colors.white),),
                    SizedBox(width: 10,),
                  ],)),
              ),
            ),
                  floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,

     
        
      );
    
  }
}