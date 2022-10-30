import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:untitled/widgets/base.dart';

TextEditingController phoneEditingController = TextEditingController();
FirebaseAuth auth = FirebaseAuth.instance;

final maskFormatter = MaskTextInputFormatter(
    mask: '+7 ### ### ## ##',
    filter: {"#": RegExp(r"[0-9]")},
    type: MaskAutoCompletionType.lazy);

class AuthPhoneForm extends StatefulWidget {
  const AuthPhoneForm({Key? key}) : super(key: key);

  @override
  State<AuthPhoneForm> createState() => _AuthPhoneFormState();
}

class _AuthPhoneFormState extends State<AuthPhoneForm> {
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
              'Авторизация',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextFormField(
                maxLength: 16,
                controller: phoneEditingController,
                inputFormatters: [maskFormatter],
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                  hintText: '+7',
                  labelText: 'Номер телефона',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await auth.verifyPhoneNumber(
                  phoneNumber: phoneEditingController.text,
                  verificationCompleted: (PhoneAuthCredential credential) {},
                  verificationFailed: (FirebaseAuthException e) {
                    if (e.code == 'invalid-phone-number') {
                      print('The provided phone number is not valid.');
                    }
                  },
                  codeSent: (String verificationId, int? resendToken) {},
                  codeAutoRetrievalTimeout: (String verificationId) {},
                );
              },
              child: const Text('Получить код'),
            ),
          ],
        ),
      ),
    );
  }
}
