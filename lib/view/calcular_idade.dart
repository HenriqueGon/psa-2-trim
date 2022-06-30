import 'package:flutter/material.dart';

class CalculaIdade extends StatelessWidget {
  int? anoNascimento;

  dialog(BuildContext context, String msg) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(msg),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) => anoNascimento = int.parse(value),
              decoration: const InputDecoration(
                labelText: 'Digite o ano de nascimento',
                hintText: 'Digite seu ano de nascimento cidadão',
              ),
            ),
            ElevatedButton(
              child: const Text('Okay'),
              onPressed: () => {
                dialog(context,
                    'Sua idade é : ${DateTime.now().year - anoNascimento!}')
              },
            )
          ],
        ),
      ),
    );
  }
}
