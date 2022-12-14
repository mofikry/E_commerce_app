import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  const DefaultFormField({
    Key? key,
    this.controller,
    this.focusNode,
    this.onEditingComplete,
    required this.labelText,
    required this.hintText,
    required this.textValidator,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction,
    this.isPassword = false,
  }) : super(key: key);

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final VoidCallback? onEditingComplete;

  final String labelText;
  final String hintText;
  final String textValidator;
  final TextInputAction? textInputAction;

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      textInputAction: textInputAction,
      onEditingComplete: onEditingComplete,
      validator: (value) {
        if (value!.isEmpty) {
          return textValidator;
        }
        return null;
      },
      obscureText: isPassword,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          fillColor: Colors.white,
          filled: true,
          labelText: labelText,
          hintText: hintText,
          labelStyle: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.red))),
    );
  }
}
