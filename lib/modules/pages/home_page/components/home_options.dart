import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nu_roxinho/modules/pages/home_page/components/item_opcao_widget.dart';
import 'package:nu_roxinho/modules/pages/home_page/home_controller.dart';

class HomeOptions extends StatefulWidget {
  @override
  _HomeOptionsState createState() => _HomeOptionsState();
}

class _HomeOptionsState extends State<HomeOptions>
    with SingleTickerProviderStateMixin {
  HomeController homeController = HomeController();

  AnimationController _animationController;
  Animation animationBody, animationFooter;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1800,
      ),
    );

    animationBody = Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(
          0.0,
          0.7,
          curve: Curves.ease,
        ),
      ),
    );

    animationFooter = Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.forward();

    var size = MediaQuery.of(context).size;
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Column(
          children: <Widget>[
            Container(
              color: Color.fromRGBO(129, 38, 157, 1),
              height: size.height * 0.73,
              child: Transform(
                transform: Matrix4.translationValues(
                  animationBody.value * size.width,
                  0.0,
                  0.0,
                ),
                child: ListView(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                  ),
                  children: <Widget>[
                    // Container(
                    //   margin: EdgeInsets.only(bottom: 15),
                    //   color: Colors.white,
                    //   height: size.height * 0.45,
                    //   // child: Column(),
                    // ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      color: Colors.white,
                      height: size.height * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.height * 0.03,
                              left: size.height * 0.03,
                              right: size.height * 0.03,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: size.height * 0.12,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Icon(
                                        Icons.attach_money,
                                        color: Colors.grey,
                                        size: size.height * 0.04,
                                      ),
                                      Text(
                                        'Conta',
                                        style: TextStyle(
                                          fontSize: size.height * 0.025,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Observer(
                                  builder: (_) {
                                    return InkWell(
                                      onTap: () {
                                        homeController.toggleVisible();
                                      },
                                      child: Icon(
                                        !homeController.isVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                        size: size.height * 0.04,
                                      ),
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: size.height * 0.03),
                            margin: EdgeInsets.only(top: size.height * 0.1),
                            child: Text(
                              'Saldo disponível',
                              style: TextStyle(
                                fontSize: size.height * 0.023,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.height * 0.03),
                            child: Stack(
                              children: <Widget>[
                                Text(
                                  'R\$ 10.000,00',
                                  style: TextStyle(
                                    fontSize: size.height * 0.04,
                                  ),
                                ),
                                Observer(
                                  builder: (_) {
                                    return Opacity(
                                      opacity:
                                          !homeController.isVisible ? 1.0 : 0.0,
                                      child: Container(
                                        color: Colors.yellow[50],
                                        height: size.height * 0.045,
                                        width: size.width * 0.5,
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.08,
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.grey[200],
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.rotate_right,
                                    color: Colors.purple,
                                  ),
                                  Container(
                                    width: size.width * 0.6,
                                    child: Text(
                                      'Transferência de R\$ 10,00 recebida de Mateus de Morais Ramalho sexta',
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: size.height * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.015,
                                ),
                                child: Icon(Icons.card_giftcard),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.015,
                                ),
                                child: Text(
                                  'Nubank Rewards',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.height * 0.03,
                                  ),
                                ),
                              ),
                              Text(
                                'Acumule pontos que nunca expiram',
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.005,
                                ),
                                child: Text(
                                  'e troque por passagens aéreas ou ',
                                  style: TextStyle(
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                              Text(
                                'serviços que você relamente usa.',
                                style: TextStyle(
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: size.height * 0.04,
                              left: size.height * 0.03,
                              right: size.height * 0.03,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: size.height * 0.06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: Colors.purple,
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'ATIVE O SEU REWARDS',
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: size.height * 0.02,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromRGBO(129, 38, 157, 1),
                padding: EdgeInsets.only(
                  top: 15,
                  bottom: size.height * 0.02,
                ),
                child: Transform(
                  transform: Matrix4.translationValues(
                    animationFooter.value * size.width,
                    0.0,
                    0.0,
                  ),
                  child: ListView(
                    padding: EdgeInsets.only(
                      left: size.width * 0.05,
                    ),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ItemOpcaoWidget(
                        icon: Icons.credit_card,
                        title: 'Cartão Virtual',
                      ),
                      ItemOpcaoWidget(
                        icon: Icons.settings_applications,
                        title: 'Ajustar limite',
                      ),
                      ItemOpcaoWidget(
                        icon: Icons.attach_money,
                        title: 'Pagar',
                      ),
                      ItemOpcaoWidget(
                        icon: Icons.rotate_left,
                        title: 'Transferir',
                      ),
                      ItemOpcaoWidget(
                        icon: Icons.rotate_right,
                        title: 'Depositar',
                      ),
                      ItemOpcaoWidget(
                        icon: Icons.device_hub,
                        title: 'Dividir  Valor',
                      ),
                      ItemOpcaoWidget(
                        icon: Icons.phone_iphone,
                        title: 'Recarga de Celular',
                      ),
                      ItemOpcaoWidget(
                        icon: Icons.lock_outline,
                        title: 'Desbloquear cartão',
                      ),
                      ItemOpcaoWidget(
                        icon: Icons.monetization_on,
                        title: 'Doação',
                      ),
                      ItemOpcaoWidget(
                        icon: Icons.plus_one,
                        title: 'Indicar amigos',
                      ),
                      ItemOpcaoWidget(
                        icon: Icons.help_outline,
                        title: 'Me Ajuda',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
