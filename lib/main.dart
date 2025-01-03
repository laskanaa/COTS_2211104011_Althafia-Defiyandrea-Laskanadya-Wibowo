import 'package:cots_althafia/modules/view.dart';
import 'package:flutter/material.dart';
import 'page/home.dart';
import 'page/loginreg.dart';
import 'page/onboarding.dart';
import 'page/pesanan.dart';
import 'page/promo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}
