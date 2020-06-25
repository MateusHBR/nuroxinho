import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nu_roxinho/modules/pages/home_page/components/home_options.dart';
import 'package:nu_roxinho/modules/pages/home_page/components/menu_inside_widget.dart';

import 'package:nu_roxinho/modules/pages/home_page/home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  HomeController homeController = HomeController();

  AnimationController _animationController;
  Animation animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 800,
      ),
    );

    animation = Tween(
      begin: 0.0,
      end: 0.8,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.ease,
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
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.09),
        child: AppBar(
          title: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: size.height * 0.04,
                    width: size.height * 0.04,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/nu.png'),
                      ),
                    ),
                  ),
                  Text(
                    'Mateus',
                    style: TextStyle(
                      fontSize: size.height * 0.03,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  homeController.toggleVisible();
                  homeController.isVisible
                      ? _animationController.forward()
                      : _animationController.reverse();
                },
                child: Observer(
                  builder: (_) {
                    return Icon(
                      !homeController.isVisible
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                    );
                  },
                ),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(129, 38, 157, 1),
          elevation: 0,
        ),
      ),
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Container(
            color: Color.fromRGBO(129, 38, 157, 1),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                  ),
                  height: size.height * 0.8,
                  width: double.infinity,
                  color: Color.fromRGBO(129, 38, 157, 1),
                  child: MenuInside(),
                ),
                Transform(
                  transform: Matrix4.translationValues(
                    0.0,
                    animation.value * size.height,
                    0.0,
                  ),
                  child: HomeOptions(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
