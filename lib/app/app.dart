import 'package:flutter/material.dart';
import 'package:flutterzada/app/view/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const home = '/';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVC Crud',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        home: (context) => const Menu(),
      },
    );
  }
}
