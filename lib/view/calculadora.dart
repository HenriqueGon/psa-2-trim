import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  double? valor1;
  double? valor2;
  String? operacao;

  dialog(BuildContext context, String msg) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(msg),
      ),
    );
  }

  Widget button({required String title, required VoidCallback function}) {
    return (ElevatedButton(
      child: Text(title),
      onPressed: () => function(),
    ));
  }

  calcularResultado(BuildContext context) {
    double? resultado;

    if (valor1 == null) {
      dialog(context, 'O primeiro valor não pode ser nulo');
    }

    if (operacao == null) {
      dialog(context, 'A operação não pode ser nulo');
    }

    if (valor2 == null) {
      dialog(context, 'O segundo valor não pode ser nulo');
    }

    switch (operacao) {
      case '+':
        resultado = valor1! + valor2!;
        break;
      case '-':
        resultado = valor1! - valor2!;
        break;
      case '*':
        resultado = valor1! * valor2!;
        break;
      case '/':
        resultado = valor1! / valor2!;
        break;
      default:
    }

    if (resultado != null) {
      dialog(context, resultado.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) => valor1 = double.parse(value),
              decoration: const InputDecoration(
                labelText: 'Digite o primeiro valor',
              ),
            ),
            TextField(
              onChanged: (value) => valor2 = double.parse(value),
              decoration: const InputDecoration(
                labelText: 'Digite o segundo valor',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                button(title: '+', function: () => operacao = '+'),
                button(title: '-', function: () => operacao = '-'),
                button(title: '*', function: () => operacao = '*'),
                button(title: '/', function: () => operacao = '/'),
              ],
            ),
            ElevatedButton(
              child: const Text('Calcular'),
              onPressed: () => {calcularResultado(context)},
            ),
          ],
        ),
      ),
    );
  }
}
