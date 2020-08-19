import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final bool check;
  ItemWidget({this.title, this.check});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Checkbox(
        value: check,
        onChanged: (bool value) {},
      ),
      trailing: IconButton(
        color: Colors.red,
        icon: Icon(Icons.remove_circle),
        onPressed: () {},
      ),
    );
  }
}
