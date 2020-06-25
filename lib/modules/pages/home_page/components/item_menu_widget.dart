import 'package:flutter/material.dart';

class ItemMenuWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final double align;

  const ItemMenuWidget({
    Key key,
    @required this.title,
    @required this.icon,
    @required this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        ListTile(
          dense: true,
          leading: Icon(
            icon,
            color: Colors.white,
            size: size.height * 0.04,
          ),
          title: Text(
            '$title',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: size.height * 0.02,
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
          ),
        ),
        Divider(
          color: Colors.white,
        ),
      ],
    );
  }
}
