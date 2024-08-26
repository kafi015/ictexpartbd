import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/utils.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.validator,
    this.obscureText,
    this.maxLines,
    this.readOnly,
    this.keyBoardType,
    this.suffixIcon,
    this.prefixIcon, this.onChanged,
  });

  final String label;
  final String hintText;
  final TextEditingController controller;

  final Function(String?)? validator;
  final Function(String?)? onChanged;
  final bool? obscureText;
  final int? maxLines;
  final bool? readOnly;
  final TextInputType? keyBoardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '  $label',
          style: GoogleFonts.poppins(
            color: primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextFormField(
          onChanged: onChanged,
          controller: controller,
          cursorColor: primaryColor,
          validator: (value) {
            if (validator != null) {
              return validator!(value);
            }
            return null;
          },
          readOnly: readOnly ?? false,
          maxLines: maxLines ?? 1,
          obscureText: obscureText ?? false,
          obscuringCharacter: '*',
          keyboardType: keyBoardType,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffE9E9E9),
            hintText: ' $hintText',
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle: GoogleFonts.poppins(
                color: Colors.grey, fontWeight: FontWeight.w400),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(34.0),
              borderSide: BorderSide.none,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(34.0),
              borderSide: BorderSide.none,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(34.0),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(34.0),
            ),
          ),
        ),
      ],
    );
  }
}
