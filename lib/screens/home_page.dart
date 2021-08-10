import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zeta_book/components/custom_app_bar.dart';
import 'package:zeta_book/screens/businesses_list.dart';
import 'package:zeta_book/screens/dashboard.dart';
import 'package:zeta_book/screens/profile_screen.dart';
import 'package:zeta_book/utilities/theme_changer.dart';

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
    final themeChanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: buildAppBar(context, themeChanger),
      body: PageView(
        controller: pageController,
        children: [
          DashBoard(),
          BusinessesList(),
          ProfileScreen(),
        ],
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
        color: (Theme.of(context).bottomNavigationBarTheme.selectedItemColor)!,
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
        buttonBackgroundColor:
            (Theme.of(context).bottomNavigationBarTheme.selectedItemColor)!,
        backgroundColor:
            (Theme.of(context).bottomNavigationBarTheme.backgroundColor)!,
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
