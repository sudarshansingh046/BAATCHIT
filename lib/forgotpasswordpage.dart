import 'package:baatchit/signinpage.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "BAATCHIT",
              style: TextStyle(fontSize: 60, color: Colors.white),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("Forgot Password",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              // controller: urlController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
                hintText: "Email",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.only(top: 5, right: 2, left: 2, bottom: 5),
                primary: Colors.purple,
                shadowColor: Colors.grey,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInPage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10.0),
                child: const Center(
                  child: Text(
                    "Reset Password",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
