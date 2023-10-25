import 'package:flutter/material.dart';

class SecPasswordTextField extends StatefulWidget {
  final String labelText;
  final FormFieldValidator<String>? validate;
  final Function(String?) onSaved;

  const SecPasswordTextField(
      {super.key,
      required this.labelText,
      this.validate,
      required this.onSaved});

  @override
  State<SecPasswordTextField> createState() => _SecPasswordTextFieldState();
}

class _SecPasswordTextFieldState extends State<SecPasswordTextField> {
  late bool _passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: widget.validate,
        obscureText: !_passwordVisible,
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          // hintText: 'Password',
          suffixIcon: IconButton(
            icon: Icon(
                _passwordVisible ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
          hintText: widget.labelText,
          filled: true,
          fillColor: Color.fromRGBO(0, 21, 51, 1),
          focusColor: Color.fromRGBO(0, 21, 51, 0.2),
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(0, 21, 51, 1),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(0, 21, 51, 1),
            ),
          ),
        ),
        keyboardType: TextInputType.text,
        onSaved: widget.onSaved);
  }
}
