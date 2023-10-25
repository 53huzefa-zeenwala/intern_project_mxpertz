import 'package:flutter/material.dart';
import 'package:intern_project/widgets/buttons/secondary_button.dart';
import 'package:intern_project/widgets/textfield/normal_textfield.dart';
import 'package:intern_project/widgets/textfield/password_textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("backgroundImage.png"),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Container(
          height: 440,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Form(
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text("Sign in to your account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    )),
                const SizedBox(height: 50),
                NormalTextField(
                  labelText: "Email",
                  onSaved: (val) {},
                ),
                const SizedBox(height: 30),
                PasswordTextField(
                  labelText: "Password",
                  onSaved: (val) {},
                ),
                const SizedBox(height: 40),
                SecondaryButton(
                  title: "LOG IN",
                  onTap: () {},
                  expand: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: const Text("FORGOT PASSWORD"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
