import 'package:flutter/material.dart';

class todoListTile extends StatefulWidget {
  @override
  _todoListTileState createState() => _todoListTileState();
}

class _todoListTileState extends State<todoListTile> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GestureDetector(
        child: Icon(Icons.delete),
        onTap: () {},
      ),
      title: Text(
        'Bring Milk to home',
        style: TextStyle(
          decoration: checked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        onChanged: (value) {
          setState(() {
            checked = value;
          });
        },
        value: checked,
      ),
    );
  }
}
