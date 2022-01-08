import 'package:baatchit/homepage.dart';
import 'package:baatchit/signinpage.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
            const TextField(
              obscureText: true,
              // controller: urlController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
                hintText: "Password",
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10.0),
                child: const Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: <Widget>[
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 15),
                      child: Divider(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * 0.05,
                      )),
                ),
                const Text(" or sign up with ",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 15, right: 10),
                      child: Divider(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * 0.05,
                      )),
                ),
              ]),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.only(top: 5, right: 2, left: 2, bottom: 5),
                primary: Colors.white,
                shadowColor: Colors.grey,
              ),
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/glogo.png",
                        width: 40,
                        height: 40,
                      ),
                      const Text(
                        "Google",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Already have account ? ",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()));
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(fontSize: 16, color: Colors.purple),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
