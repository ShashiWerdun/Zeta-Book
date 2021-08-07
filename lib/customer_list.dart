import 'package:flutter/material.dart';
import 'package:zeta_book/fade_route.dart';
import 'package:zeta_book/transaction_list.dart';

class CustomersScreen extends StatefulWidget {
  const CustomersScreen({Key? key}) : super(key: key);

  @override
  _CustomersScreenState createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  FadeRoute(
                    page: TransactionsScreen(
                      customerID: index,
                    ),
                  ),
                );
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Customer Name',
                          style: TextStyle(fontSize: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Customer Phone',
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text('Amount Due:'),
                        Row(
                          children: [
                            Text(
                              ((index % 2 == 1)
                                      ? 'pay \u{20B9}'
                                      : 'receive \u{20B9}') +
                                  '$index',
                              style: TextStyle(fontSize: 18),
                            ),
                            // Icon(Icons.money_rounded),
                            // Text('due$index')
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: 100,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.white,
            indent: 30,
            endIndent: 30,
            height: 10,
            thickness: 0.8,
          );
        },
      ),
    );
  }
}
