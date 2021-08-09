import 'package:flutter/material.dart';
import 'package:zeta_book/screens/business_home.dart';
import 'package:zeta_book/utilities/fade_route.dart';

class BusinessesList extends StatefulWidget {
  const BusinessesList({Key? key}) : super(key: key);

  @override
  _BusinessesListState createState() => _BusinessesListState();
}

class _BusinessesListState extends State<BusinessesList> {
  var businesses = {
    'Business1': 'Category1',
    'Business2': 'Category2',
    'Business3': 'Category3',
    'Business4': 'Category4',
    'Business5': 'Category5',
    'Business6': 'Category6',
    'Business7': 'Category7',
  };
  ScrollController listcontroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final bool darkTheme = Theme.of(context).brightness == Brightness.dark;
    final TextStyle textStyle = (Theme.of(context).textTheme.bodyText1)!;
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'List of your Businesses',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: SafeArea(
                child: ListView.separated(
                  itemCount: businesses.length,
                  physics: BouncingScrollPhysics(),
                  controller: listcontroller,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    String title = businesses.keys.toList()[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            FadeRoute(
                              page: BusinessHomePage(
                                businessID: index,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Theme.of(context).cardTheme.color),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: textStyle.color,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  businesses[title].toString(),
                                  style: TextStyle(
                                      fontSize: 18, color: textStyle.color),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 0),
                    child: Divider(
                      color: darkTheme ? Colors.white : Colors.black,
                      height: 10,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_business_outlined),
        onPressed: () {},
      ),
    );
  }
}
