import 'package:flutter/material.dart';
import 'package:intern_project/pages/login.dart';
import 'package:intern_project/pages/register.dart';
import 'package:intern_project/pages/settings.dart';
import 'package:intern_project/widgets/buttons/primary_button.dart';
import 'package:intern_project/widgets/buttons/secondary_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          focusColor: Colors.grey.shade300,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 10,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        child: Column(
          children: [
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Column(
                children: [
                  PrimaryButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    title: "LOG IN WITH EMAIL",
                    borderRadius: 4,
                    expand: true,
                  ),
                  const SizedBox(height: 15),
                  SecondaryButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ));
                    },
                    title: "Register",
                    expand: true,
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
