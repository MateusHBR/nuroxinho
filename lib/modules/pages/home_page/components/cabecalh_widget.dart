import 'package:flutter/material.dart';

class CabecalhoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Banco ',
              style: TextStyle(
                color: Colors.white,
                fontSize: size.height * 0.018,
              ),
            ),
            Text(
              '000 - Nu Pagamentos  S.A.',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.height * 0.018,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Agência ',
              style: TextStyle(
                color: Colors.white,
                fontSize: size.height * 0.018,
              ),
            ),
            Text(
              '0000',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.height * 0.018,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Conta ',
              style: TextStyle(
                color: Colors.white,
                fontSize: size.height * 0.018,
              ),
            ),
            Text(
              '00000000-0',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.height * 0.018,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
