import 'package:flutter/material.dart';

class ListDivider extends StatelessWidget {
  const ListDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool darkTheme = (Theme.of(context).brightness == Brightness.dark);
    return Divider(
      color: darkTheme ? Colors.white : Colors.black,
      indent: 20,
      endIndent: 20,
      height: 10,
      thickness: 0.8,
    );
  }
}

class DetailsDivider extends StatelessWidget {
  const DetailsDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 20,
      thickness: 1,
      indent: 30,
      endIndent: 30,
      color: Colors.white,
    );
  }
}
