import 'package:flutter/material.dart';
import 'package:uts_tpm_novia/components/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  "assets/images/logo_IF.png",
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          _usernameField(),
          SizedBox(
            height: 20,
          ),
          _passwordField(),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: () {
              if (usernameController.text == "123200023" && passwordController.text == "novia") {
                Navigator.popAndPushNamed(context, "/navbar");
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text("Email/Password Salah!"),
                    );
                  },
                );
              }
            },
            buttonText: 'Login',
            sizeHeight: 45,
            sizeWidth: 200,
            borderRadius: 20,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 25.0, right: 25),
      child: TextFormField(
        controller: usernameController,
        decoration: InputDecoration(
            labelText: "Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 25.0, right: 25),
      child: TextField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
            labelText: "Password",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
      ),
    );
  }
}
