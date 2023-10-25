import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final bool expand;
  final double fontSize;
  final double paddingVertical;
  final double paddingHorizontal;
  final double borderRadius;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.onTap,
    this.expand = false,
    this.fontSize = 14,
    this.paddingVertical = 20,
    this.paddingHorizontal = 30,
    this.borderRadius = 4,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        minimumSize: expand ? Size(double.infinity, paddingVertical * 2) : null,
        elevation: 2,
        padding: EdgeInsets.symmetric(
            vertical: paddingVertical, horizontal: paddingHorizontal),
        backgroundColor: Colors.yellow,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: const Color.fromRGBO(1, 29, 69, 1),
        ),
      ),
    );
  }
}
