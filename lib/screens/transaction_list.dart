import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zeta_book/screens/customer_details.dart';
import 'package:zeta_book/screens/pdf_generation_screen.dart';
import 'package:zeta_book/utilities/slide_route.dart';

class TransactionsScreen extends StatefulWidget {
  final int customerID;

  const TransactionsScreen({
    Key? key,
    required this.customerID,
  }) : super(key: key);

  @override
  _TransactionsScreenState createState() =>
      _TransactionsScreenState(customerID: customerID);
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  late int customerID;

  _TransactionsScreenState({required this.customerID});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final AppBarTheme appBarTheme = themeData.appBarTheme;
    final TextTheme textTheme = themeData.textTheme;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Customer Name',
          style: appBarTheme.titleTextStyle,
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  TextButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                        Size.fromWidth(screenWidth / 2),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, SlideRoute(page: PdfGenerationScreen()));
                    },
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.picture_as_pdf,
                            size: 45,
                            color: appBarTheme.actionsIconTheme!.color,
                          ),
                          Text(
                            'Generate\npdf',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: appBarTheme.actionsIconTheme!.color,
                          )
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                        Size.fromWidth(screenWidth / 2),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        SlideRoute(
                          page: CustomerDetailsScreen(),
                        ),
                      );
                    },
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 50,
                            color: appBarTheme.actionsIconTheme!.color,
                          ),
                          Text(
                            'Customer\ndetails',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: appBarTheme.actionsIconTheme!.color,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 4.0, left: 15.0, bottom: 4.0),
                child: Align(
                  child: Text(
                    'List of transactions:',
                    style: textTheme.headline1,
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'transaction note $index',
                                      overflow: TextOverflow.ellipsis,
                                      style: textTheme.subtitle1,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        DateTime(2019).toString(),
                                        style: textTheme.bodyText1,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                child: Column(
                                  children: [
                                    Text(
                                      (index % 2 == 1) ? 'paid' : 'received',
                                      style: textTheme.bodyText2,
                                    ),
                                    Text(
                                      '\u{20B9}$index',
                                      style: textTheme.subtitle2,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 50,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                      width: screenWidth / 3,
                      child: Row(
                        children: [
                          Icon(Icons.call_made),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Paid',
                              style: textTheme.subtitle2!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                      width: screenWidth / 3,
                      child: Row(
                        children: [
                          Icon(Icons.call_received),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Received',
                              style: textTheme.subtitle2!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
