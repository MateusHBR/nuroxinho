import 'package:flutter/material.dart';

class ItemOpcaoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.height * 0.115,
      color: Colors.white,
      margin: EdgeInsets.only(
        right: 10,
      ),
    );
  }
}
