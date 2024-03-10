import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/Animation/FadeAnimation.dart';
import 'package:login_page/widget/PurpleGradientButton.dart';
import 'package:login_page/widget/TextForm.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/background.png'),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 30,
                    width: 80,
                    height: 200,
                    child: FadeAnimation(
                      0.5,
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/light-1.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 150,
                    child: FadeAnimation(
                      0.3,
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/light-2.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child: FadeAnimation(
                      0.6,
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/clock.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: FadeAnimation(
                      1,
                      Container(
                        margin: EdgeInsets.all(50),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  FadeAnimation(
                    0.7,
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(children: [
                        TextForm(hintText: "Email or Phone number"),
                        TextForm(hintText: "Password"),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FadeAnimation(
                    0.5,
                    PurpleGradientButton(
                      text: 'Login',
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  FadeAnimation(
                    0.5,
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color.fromRGBO(143, 148, 251, 1),
                      ),
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
