import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  final String toDelete;

  const DeleteButton({
    Key? key,
    required this.toDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        'Delete ' + this.toDelete,
        style: TextStyle(fontSize: 15),
      ),
      style: ElevatedButton.styleFrom(
        shadowColor: Theme.of(context).cardTheme.shadowColor,
        primary: Colors.red,
      ),
    );
  }
}
