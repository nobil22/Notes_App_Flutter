import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_serch_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes ',style: TextStyle(fontSize: 28),),
        Spacer(),
        CustomSerchIcon(),
      ],
    );
  }
}