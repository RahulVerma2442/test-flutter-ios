import 'package:flutter/material.dart';
import 'package:welivdit_app/src/View/widget/textfield.dart';

import 'mentor_form.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff4e4),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LogIn",
              style: TextStyle(
                fontSize: 29,
                color: Color(0xffe16259),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            TextFieldWidget(
              hintText: 'Email',
              obscureText: false,
              prefixIconData: Icons.mail_outline,
              suffixIconData: Icons.mail_outline,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFieldWidget(
              hintText: 'Password',
              obscureText: true,
              prefixIconData: Icons.lock_outline,
              suffixIconData: Icons.lock_outline,
            ),
            const SizedBox(
              height: 50.0,
            ),
            Padding(
                    padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xffe16259),
                          textStyle: const TextStyle(
                              fontSize: 29, fontWeight: FontWeight.w500)),
                      onPressed: null
                       
                      ,
                      child: const Text("Log In"),
                    ),
                  ),
            const SizedBox(
              height: 20.0,
            ),
             Padding(
                    padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xffe16259),
                          textStyle: const TextStyle(
                              fontSize: 29, fontWeight: FontWeight.w500)),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return const MentorForm();
                        }));
                      },
                      child: const Text("SignUp"),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
