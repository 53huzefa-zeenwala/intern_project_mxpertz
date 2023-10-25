import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NormalTextField extends StatelessWidget {
  final FormFieldValidator<String>? validate;
  final Function(String?) onSaved;
  final bool autoFocus;
  final String labelText;
  final TextInputType keyboardType;
  final int maxLines;
  final double verticalPadding;
  final bool isEnable;
  final String? defaultValue;

  const NormalTextField(
      {super.key,
      this.defaultValue,
      this.autoFocus = false,
      required this.labelText,
      this.keyboardType = TextInputType.text,
      this.validate,
      required this.onSaved,
      this.maxLines = 1,
      this.verticalPadding = 6,
      this.isEnable = true});

  @override
  Widget build(BuildContext context) {
    List<TextInputFormatter>? filters() {
      if (keyboardType == TextInputType.number) {
        return [FilteringTextInputFormatter.digitsOnly];
      }
      if (keyboardType == TextInputType.phone) {
        return [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(11),
        ];
      }

      return [];
    }

    return TextFormField(
      autofocus: autoFocus,
      initialValue: defaultValue,
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.labelMedium,
      decoration: InputDecoration(
        enabled: isEnable,
        contentPadding:
            EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 10),
        labelText: labelText,
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
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
      inputFormatters: filters(),
      keyboardType: keyboardType,
      validator: validate,
      onSaved: isEnable ? onSaved : null,
      maxLines: maxLines,
      textCapitalization: TextCapitalization.sentences,
    );
  }
}
