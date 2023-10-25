import 'package:flutter/material.dart';
import 'package:intern_project/pages/settings.dart';
import 'package:intern_project/widgets/buttons/secondary_button.dart';
import 'package:intern_project/widgets/secondary_textfeild/sec_normal_textfield.dart';
import 'package:intern_project/widgets/secondary_textfeild/sec_password_textfield.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register with skenu"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(1, 29, 69, 0.9),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 40,
        ),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecNormalTextField(
                labelText: "Username",
                onSaved: (val) {},
                autoFocus: true,
              ),
              SecNormalTextField(
                labelText: "Email",
                onSaved: (val) {},
              ),
              SecPasswordTextField(
                labelText: "Password",
                onSaved: (val) {},
              ),
              SecPasswordTextField(
                labelText: "Confirm Password",
                onSaved: (val) {},
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (val) {},
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Agree terms and conditions.",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
              SecondaryButton(
                title: "Register",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Settings(),
                      ));
                },
                color: Color.fromRGBO(0, 21, 51, 1),
                expand: true,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
