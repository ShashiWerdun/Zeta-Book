import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:zeta_book/profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentpage = 0;
  PageController pageController = PageController();
  GlobalKey<CurvedNavigationBarState> _navigationkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: PageView(
        pageSnapping: false,
        controller: pageController,
        children: [
          Center(
            child: Text("Home"),
          ),
          Center(
            child: Text("List"),
          ),
          ProfileScreen(),
        ],
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          setState(() {
            _currentpage = index;
            final CurvedNavigationBarState? navigationBarState =
                _navigationkey.currentState;
            navigationBarState?.setPage(_currentpage);
          });
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        key: _navigationkey,
        items: [
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.list,
            size: 30,
          ),
          Icon(
            Icons.person,
            size: 30,
          ),
        ],
        height: 65,
        index: _currentpage,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _currentpage = index;
            pageController.animateToPage(_currentpage,
                duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
          });
        },
      ),
    );
  }
}
