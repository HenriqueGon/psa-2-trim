import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  Widget button({required String text, required VoidCallback function}) {
    return (ElevatedButton(
      child: Text(text),
      onPressed: () => function(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          button(
              text: 'É o contas',
              function: () => Navigator.pushNamed(context, '/contador')),
          button(
              text: 'É o entrosas',
              function: () => Navigator.pushNamed(context, '/hello_world')),
          button(
              text: 'É o frio e calculista',
              function: () => Navigator.pushNamed(context, '/calcular_idade')),
          button(
              text: 'É o calculas',
              function: () => Navigator.pushNamed(context, '/calculadora')),
        ],
      ),
    ));
  }
}
