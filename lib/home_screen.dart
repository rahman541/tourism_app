import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'destination_carousel.dart';
import 'hotel_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Theme.of(context).accentColor : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Icon(
          _icons[index],
          size: 25,
          color: _selectedIndex == index ? Theme.of(context).primaryColor : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 3.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 120),
              child: Text('What would you like to find?', style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              )),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons.asMap().entries.map((MapEntry map) => _buildIcon(map.key)).toList()
            ),
            SizedBox(height: 3.0,),
            DestinationCarousel(),
            SizedBox(height: 3.0,),
            HotelCarousel(),
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30,),
            title: SizedBox.shrink()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pizza, size: 30,),
            title: SizedBox.shrink()
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/d/d3/User_Circle.png'),
            ),
            title: SizedBox.shrink()
          ),
        ]
      ),
    );
  }
}