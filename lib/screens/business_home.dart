import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:zeta_book/screens/business_details.dart';
import 'package:zeta_book/screens/customer_list.dart';

class BusinessHomePage extends StatefulWidget {
  final int businessID;

  const BusinessHomePage({Key? key, required this.businessID})
      : super(key: key);

  @override
  _BusinessHomePageState createState() =>
      _BusinessHomePageState(businessID: businessID);
}

class _BusinessHomePageState extends State<BusinessHomePage> {
  late int businessID;
  int _currentPage = 0;
  PageController pageController = PageController();
  GlobalKey<CurvedNavigationBarState> _navigationKey = GlobalKey();

  _BusinessHomePageState({required this.businessID});

  @override
  Widget build(BuildContext context) {
    print('$businessID');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'This Business',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: PageView(
        controller: pageController,
        children: [
          CustomersScreen(),
          BusinessDetailsPage(),
        ],
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
            final CurvedNavigationBarState? navigationBarState =
                _navigationKey.currentState;
            navigationBarState?.setPage(_currentPage);
          });
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: (Theme.of(context).bottomNavigationBarTheme.selectedItemColor)!,
        buttonBackgroundColor:
            (Theme.of(context).bottomNavigationBarTheme.selectedItemColor)!,
        backgroundColor:
            (Theme.of(context).bottomNavigationBarTheme.backgroundColor)!,
        key: _navigationKey,
        height: 65,
        index: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index;
            pageController.animateToPage(_currentPage,
                duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
          });
        },
        items: [
          Icon(Icons.people),
          Icon(Icons.business_center),
        ],
      ),
    );
  }
}
