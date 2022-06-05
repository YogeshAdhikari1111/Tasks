import 'package:crypto_app/screen/coin_main_screen.dart';
import 'package:flutter/material.dart';

Future main() async {
  runApp(const RestServicesDemoApp());
}

class RestServicesDemoApp extends StatelessWidget {
  const RestServicesDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CoinAppDemo());
  }
}
