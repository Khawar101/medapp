 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speed_code/chating_page.dart';
import 'package:speed_code/home_pages/main_screen.dart';
import 'package:speed_code/home_pages/my_home_page.dart';
import 'package:speed_code/home_pages/profile_screen.dart';
import 'package:speed_code/messages_page.dart';
import 'package:speed_code/worx_space.dart';

import 'home_pages/main_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  PageController _pageController=PageController();int _selectedIndex=0;
  List<Widget>_screens=[ HomePage(), WorxSpace(), ChatPage(),];

  
  void _onPageChanged(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  void _onItemTapped(int i){
    _pageController.jumpToPage(i);
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          
          controller: _pageController ,
          children: _screens,
          onPageChanged: _onPageChanged),
        bottomNavigationBar: BottomNavigationBar(            
        selectedItemColor: const Color(0xFF1859dc),
        type: BottomNavigationBarType.fixed,
        
    
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Task',
          ),
           
        BottomNavigationBarItem(
          icon: Icon(Icons.message_rounded),
          label: 'Message',
        ),
           
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
          ),
    
        ),
    );
    
  }
}