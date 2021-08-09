import 'package:flutter/material.dart';
import 'package:zeta_book/screens/customer_details.dart';
import 'package:zeta_book/utilities/slide_route.dart';

class TransactionsScreen extends StatefulWidget {
  final int customerID;

  const TransactionsScreen({Key? key, required this.customerID})
      : super(key: key);

  @override
  _TransactionsScreenState createState() =>
      _TransactionsScreenState(customerID: customerID);
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  late int customerID;

  _TransactionsScreenState({required this.customerID});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Customer Name',
          style: themeData.appBarTheme.titleTextStyle,
        ),
      ),
      body: Column(
        children: [
          TextButton(
            style: ButtonStyle(
                fixedSize:
                    MaterialStateProperty.all(Size.fromWidth(screenWidth / 2))),
            onPressed: () {
              Navigator.push(
                context,
                OtherRoute(
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
                    color: themeData.appBarTheme.actionsIconTheme!.color,
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
                    color: themeData.appBarTheme.actionsIconTheme!.color,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, left: 15.0, bottom: 4.0),
            child: Align(
              child: Text(
                'List of transactions:',
                style: TextStyle(fontSize: 20),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
          Expanded(
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
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  DateTime(2019).toString(),
                                  style: TextStyle(fontSize: 13),
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
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                '\u{20B9}$index',
                                style: TextStyle(fontSize: 20),
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
        ],
      ),
    );
  }
}
