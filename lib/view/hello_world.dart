import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  String? nome;

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
              onChanged: (value) => nome = value,
              decoration: const InputDecoration(
                labelText: 'Nome',
                hintText: 'Digite seu nome cidadão',
              ),
            ),
            ElevatedButton(
              child: const Text('Okay'),
              onPressed: () => {dialog(context, '$nome')},
            )
          ],
        ),
      ),
    );
  }
}
