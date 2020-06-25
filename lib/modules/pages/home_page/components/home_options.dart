import 'package:flutter/material.dart';
import 'package:nu_roxinho/modules/pages/home_page/components/item_opcao_widget.dart';

class HomeOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          color: Color.fromRGBO(129, 38, 157, 1),
          height: size.height * 0.73,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
            ),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 15),
                color: Colors.white,
                height: size.height * 0.45,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                color: Colors.white,
                height: size.height * 0.45,
              ),
              Container(
                color: Colors.white,
                height: size.height * 0.45,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Color.fromRGBO(129, 38, 157, 1),
            padding: EdgeInsets.only(
              top: 15,
              left: size.width * 0.05,
              bottom: size.height * 0.02,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ItemOpcaoWidget(),
                ItemOpcaoWidget(),
                ItemOpcaoWidget(),
                ItemOpcaoWidget(),
                ItemOpcaoWidget(),
                ItemOpcaoWidget(),
                ItemOpcaoWidget(),
                ItemOpcaoWidget(),
                ItemOpcaoWidget(),
                ItemOpcaoWidget(),
                ItemOpcaoWidget(),
                ItemOpcaoWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
