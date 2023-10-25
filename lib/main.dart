import 'package:flutter/material.dart';
import 'package:flutter_application_3/cart_page/cart_page.dart';
import 'package:flutter_application_3/front_page/front_page.dart';
import 'package:flutter_application_3/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => addandsub(),
        child: front_page(),
      ),
      routes: {'/cart_page': (context) => CartPage(imageindex: 0)},
    );
  }
}
