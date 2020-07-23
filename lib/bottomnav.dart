import 'package:ally/home.dart';
import 'package:ally/profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
  
}

class _BottomNavState extends State<BottomNav> {
   int _currentIndex = 0;
   final List<Widget> _children = [
     Home(),
     
   ];

   void onTappedBar(int index)
   {
     setState(() {
       _currentIndex = index;
     });
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
       bottomNavigationBar:BottomNavigationBar(
          backgroundColor: Colors.white, 
           selectedItemColor: Colors.greenAccent,
            unselectedItemColor: Colors.grey,

            onTap:onTappedBar,
            currentIndex: _currentIndex,
              items: 
              [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                  ),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text('Search')
                  ),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Profile')
                  ),
              ],
              ) ,
    );
  }
}