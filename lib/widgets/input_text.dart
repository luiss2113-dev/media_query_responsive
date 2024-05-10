import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType textType;
  final bool obscuredText;
  final bool borderEnable;
  final double fontSize;
  const InputText({
    super.key,
    this.label = '',
    this.textType = TextInputType.text,
    this.borderEnable = true,
    this.obscuredText = false,
    this.fontSize = 15,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textType,
      obscureText: obscuredText,
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        labelText: label,
        enabledBorder: borderEnable
            ? const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              )
            : InputBorder.none,
        labelStyle: const TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
