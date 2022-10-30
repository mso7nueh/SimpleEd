import 'package:flutter/material.dart';
import 'package:untitled/widgets/base.dart';

TextEditingController codeEditingController = TextEditingController();

class AuthCodeForm extends StatefulWidget {
  const AuthCodeForm({Key? key}) : super(key: key);

  @override
  State<AuthCodeForm> createState() => _AuthCodeFormState();
}

class _AuthCodeFormState extends State<AuthCodeForm> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Введите код',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextFormField(
                maxLength: 6,
                controller: codeEditingController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  labelText: 'Код',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {},
              child: const Text('Войти'),
            ),
          ],
        ),
      ),
    );
  }
}
