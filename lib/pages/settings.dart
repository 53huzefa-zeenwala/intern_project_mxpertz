import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subdirectory_arrow_right_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.messenger_outline),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("backgroundImage.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Spacer(),
            Container(
              height: 300,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                // vertical: 20,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromRGBO(1, 29, 69, 0.9),
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  settingButton(
                      title: "Language",
                      icon: CupertinoIcons.globe,
                      colorData: Colors.yellow),
                  settingButton(
                      title: "Privacy Policy", icon: Icons.policy_outlined),
                  settingButton(
                      title: "Terms Of Use", icon: CupertinoIcons.doc_on_doc),
                  settingButton(
                      title: "Help & Support", icon: Icons.help_outline),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton settingButton({
    required String title,
    required IconData icon,
    Color colorData = const Color.fromRGBO(0, 21, 51, 1),
  }) {
    return ElevatedButton.icon(
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        minimumSize: Size(double.infinity, 20),
        elevation: 2,
        padding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        backgroundColor: colorData,
      ),
      label: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
