import 'package:flutter/material.dart';

class ItemOpcaoWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const ItemOpcaoWidget({Key key, @required this.title, @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.height * 0.115,
      decoration: BoxDecoration(
        color: Color.fromRGBO(145, 64, 169, 1),
        borderRadius: BorderRadius.circular(size.height * 0.005),
      ),
      margin: EdgeInsets.only(
        right: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.004,
              top: size.width * 0.004,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: size.height * 0.035,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: size.width * 0.01,
              right: size.width * 0.01,
              bottom: size.width * 0.008,
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: size.height * 0.0158,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
