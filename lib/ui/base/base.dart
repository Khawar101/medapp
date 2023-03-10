import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:speed_code/ui/chat/chating_list_screen.dart';
import 'package:speed_code/ui/home/home_screen.dart';

class Base extends StatefulWidget {
  const Base({Key? key}) : super(key: key);

  @override
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base> {
  List<Widget> views = [
    const Center(child: Text("First Screen")),
    const Center(child: Text("Second Screen")),
    const Home(),
    const ChatListScreen(),
    const Center(child: Text("Fifth Screen")),
  ];

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 2;
  SnakeShape snakeShape = SnakeShape.indicator;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Color selectedColor = const Color(0xFF1859dc);
  Color unselectedColor = Colors.blueGrey;

  Gradient selectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.amber]);
  Gradient unselectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.blueGrey]);

  Color? containerColor;
  List<Color> containerColors = [
    const Color(0xFFFDE1D7),
    const Color(0xFFE4EDF5),
    const Color(0xFFE7EEED),
    const Color(0xFFF4E4CE),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[_selectedItemPosition],
      bottomNavigationBar: SnakeNavigationBar.color(
        shadowColor: const Color(0xFF1859dc),
        // height: 80,
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        padding: padding,

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: selectedColor,
        selectedItemColor:
            snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor: unselectedColor,
        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,

        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'tickets'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'chat'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search')
        ],
        selectedLabelStyle: const TextStyle(fontSize: 10),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),
    );
  }
}
