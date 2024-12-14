import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxline = 1});
  final String hint;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(
          kPrimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildborder([coler]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: coler ?? Colors.white,
        ));
  }
}
