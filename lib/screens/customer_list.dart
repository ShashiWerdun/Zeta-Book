import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:zeta_book/screens/transaction_list.dart';
import 'package:zeta_book/utilities/fade_route.dart';
import 'package:zeta_book/widgets/dividers.dart';

class CustomersScreen extends StatefulWidget {
  const CustomersScreen({Key? key}) : super(key: key);

  @override
  _CustomersScreenState createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool darkMode = theme.brightness == Brightness.dark;
    final TextTheme textTheme = theme.textTheme;
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'List of Customers',
                    style: textTheme.headline1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: SizedBox(
                  height: 60,
                  child: AnimSearchBar(
                    width: size.width - 24,
                    textController: textController,
                    rtl: true,
                    onSuffixTap: () {
                      setState(() {
                        textController.clear();
                      });
                    },
                    color: darkMode ? Color(0xFF3C3C3C) : Colors.white,
                    helpText: 'Search customer name',
                    prefixIcon: Icon(Icons.person_search),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Customer Name',
                                      style: textTheme.subtitle1,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        'Customer Phone',
                                        style: textTheme.bodyText1,
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Amount Due:',
                                      style: textTheme.bodyText2,
                                    ),
                                    Text(
                                      ((index % 2 == 1)
                                          ? 'pay \u{20B9}'
                                          : 'receive \u{20B9}') +
                                          '$index',
                                      style: textTheme.subtitle2,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 100,
                separatorBuilder: (context, index) {
                  return ListDivider();
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person_add_alt_1),
        onPressed: () {},
      ),
    );
  }
}
