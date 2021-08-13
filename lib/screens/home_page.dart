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
  PageController pageController = PageController();
  GlobalKey<CurvedNavigationBarState> _navigationkey = GlobalKey();
  bool setNavPage = true;

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
          if (setNavPage) {
            final CurvedNavigationBarState? navigationBarState =
                _navigationkey.currentState;
            navigationBarState?.setPage(index);
          }
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
        buttonBackgroundColor:
            (Theme.of(context).bottomNavigationBarTheme.selectedItemColor)!,
        backgroundColor:
            (Theme.of(context).bottomNavigationBarTheme.backgroundColor)!,
        onTap: (index) async {
          setState(() {
            setNavPage = false;
          });
          await pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
          setState(() {
            setNavPage = true;
          });
        },
      ),
    );
  }
}
