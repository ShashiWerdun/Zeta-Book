import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
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
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
          );
        },
        itemCount: 50,
      ),
    );
  }
}
