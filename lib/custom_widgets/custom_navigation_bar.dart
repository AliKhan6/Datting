import 'package:dating/constants/colors_constants.dart';
import 'package:dating/screens/explore_screen.dart';
import 'package:dating/screens/filters_screen.dart';
import 'package:dating/screens/interest_screen.dart';
import 'package:dating/screens/messages_screen.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  int navigationBarIndex;
  CustomNavigationBar({this.navigationBarIndex});
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  Color bottomcolor=Colors.white;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.navigationBarIndex,
      unselectedItemColor: appBackgroundColor,
      backgroundColor: splashScreenColor,
      selectedItemColor: bottomcolor,
      type: BottomNavigationBarType.fixed,
      items: [
        // ignore: deprecated_member_use
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.filter_alt_outlined),title: Text('Filtered')),
        BottomNavigationBarItem(icon: Icon(Icons.forward_to_inbox_rounded),title: Text('Messages')),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),title: Text('Interests')),
      ],
      onTap: (currentIndex){
        setState(() {
          print(currentIndex);
          if (currentIndex == 0)
          {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>ExploreScreen()));
          }
          else if (currentIndex == 1)
          {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>FiltersScreen()));
          }
          else if(currentIndex == 2)
          {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>MessageScreen()));
          }
          else if(currentIndex == 3)
          {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>InterestScreen()));
          }
        });
      },
    );
  }
}
