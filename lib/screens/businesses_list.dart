import 'package:flutter/material.dart';
import 'package:zeta_book/models/data.dart';
import 'package:zeta_book/screens/business_home.dart';
import 'package:zeta_book/utilities/fade_route.dart';
import 'package:zeta_book/widgets/dividers.dart';

class BusinessesList extends StatefulWidget {
  const BusinessesList({Key? key}) : super(key: key);

  @override
  _BusinessesListState createState() => _BusinessesListState();
}

class _BusinessesListState extends State<BusinessesList> {
  ScrollController listcontroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'List of your Businesses',
                style: textTheme.headline1,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: SafeArea(
                child: ListView.separated(
                  itemCount: businessList.length,
                  physics: BouncingScrollPhysics(),
                  controller: listcontroller,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
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
                                  businessList[index].name,
                                  style: textTheme.subtitle1,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  businessList[index].category,
                                  style: textTheme.subtitle2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return ListDivider();
                  },
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