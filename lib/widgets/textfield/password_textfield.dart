import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final String labelText;
  final FormFieldValidator<String>? validate;
  final Function(String?) onSaved;

  const PasswordTextField(
      {super.key,
      required this.labelText,
      this.validate,
      required this.onSaved});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
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
        style: Theme.of(context).textTheme.labelMedium,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(1, 29, 69, 1),
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.yellow,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.yellow,
            ),
          ),
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          filled: false,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          labelText: widget.labelText,
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
        ).applyDefaults(Theme.of(context).inputDecorationTheme),
        keyboardType: TextInputType.text,
        onSaved: widget.onSaved);
  }
}
