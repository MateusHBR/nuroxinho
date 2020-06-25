import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nu_roxinho/modules/pages/home_page/home_page.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(129, 38, 157, 1),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}
