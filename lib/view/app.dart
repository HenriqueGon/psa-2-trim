import 'package:flutter/material.dart';
import 'package:flutterzada/view/calculadora.dart';
import 'package:flutterzada/view/calcular_idade.dart';
import 'package:flutterzada/view/hello_world.dart';
import 'package:flutterzada/view/home_page.dart';
import 'package:flutterzada/view/menu.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => Menu(),
        '/contador': (context) => const MyHomePage(title: 'Appzao bonito'),
        '/hello_world': (context) => HelloWorld(),
        '/calcular_idade': (context) => CalculaIdade(),
        '/calculadora': (context) => Calculadora(),
      },
    );
  }
}
