import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FleetimeTextField extends StatelessWidget {
  const FleetimeTextField({
    super.key,
    required this.name,
    required this.hintText,
    this.validator,
    required this.keyboardType,
    this.controller,
  });

  final String name;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      controller: controller,
      name: name,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.done,
      style: const TextStyle(
        fontSize: 24,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        filled: false,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 24,
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.all(0),
      ),
    );
  }
}
