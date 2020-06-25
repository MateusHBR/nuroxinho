import 'package:flutter/material.dart';
import 'package:nu_roxinho/modules/pages/home_page/components/cabecalh_widget.dart';
import 'package:nu_roxinho/modules/pages/home_page/components/item_menu_widget.dart';

class MenuInside extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                bottom: 5,
              ),
              height: size.height * 0.13,
              width: size.height * 0.13,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/qr.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CabecalhoWidget(),
            ),
            Divider(
              color: Colors.white,
            ),
            ItemMenuWidget(
              icon: Icons.help_outline,
              title: 'Me ajuda',
              align: -1,
            ),
            ItemMenuWidget(
              icon: Icons.person_outline,
              title: 'Perfil',
              align: -1.0,
            ),
            ItemMenuWidget(
              icon: Icons.settings_applications,
              title: 'Configurar conta',
              align: -1.0,
            ),
            ItemMenuWidget(
              icon: Icons.credit_card,
              title: 'Configurar Cartão',
              align: -1.0,
            ),
            ItemMenuWidget(
              icon: Icons.phone_iphone,
              title: 'Configurações do app',
              align: -1.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: size.height * 0.07,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white),
              ),
              alignment: Alignment.center,
              child: Text(
                'SAIR DA CONTA',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.02,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
