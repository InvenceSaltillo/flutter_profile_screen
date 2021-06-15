import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _currentIndex = 0;
              });
            },
            icon: Icon(
              Icons.home,
              size: _currentIndex == 0 ? 30 : 25,
              color: _currentIndex == 0 ? Color(0xff4245ff) : Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _currentIndex = 1;
              });
            },
            icon: Icon(
              Icons.local_offer,
              size: _currentIndex == 1 ? 30 : 25,
              color: _currentIndex == 1 ? Color(0xff4245ff) : Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _currentIndex = 2;
              });
            },
            icon: Icon(
              Icons.notifications,
              size: _currentIndex == 2 ? 30 : 25,
              color: _currentIndex == 2 ? Color(0xff4245ff) : Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _currentIndex = 3;
              });
            },
            icon: Icon(
              Icons.person,
              size: _currentIndex == 3 ? 30 : 25,
              color: _currentIndex == 3 ? Color(0xff4245ff) : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
