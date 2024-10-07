import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/helpers/bottom_bar.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

int selectIndex = 0 ;
class GetBottomBar extends StatefulWidget {
  const GetBottomBar({super.key});

  @override
  State<GetBottomBar> createState() => _GetBottomBarState();
}

class _GetBottomBarState extends State<GetBottomBar> {
  @override
  Widget build(BuildContext context) {
    return StylishBottomBar(
      
      // hasNotch: true,
      fabLocation: StylishBarFabLocation.center ,
      
      currentIndex: selectIndex,
      items: [ 
       
           BottomBarItem(
         icon: Icon(Icons.home),
         title: Text("home")
         ),
           BottomBarItem(
         icon: Icon(Icons.hot_tub),
         title: Text("हवामान ")
         ),
           BottomBarItem(
         icon: Icon(Icons.newspaper_outlined),
         title: Text("   कृषी बातम्या ")
         ),
           BottomBarItem(
         icon: const  Icon(Icons.notifications_outlined),
         title: Text("संदेश")
         ),
      ],
       option: AnimatedBarOptions( 
         iconStyle: IconStyle.Default,
         barAnimation: BarAnimation.fade
       ),
            

       onTap: (index){
        selectIndex = index ;
        setState(() {
          
        });
       },
    );
       
  }
}