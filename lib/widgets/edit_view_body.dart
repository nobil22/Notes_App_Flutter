import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SizedBox(height:25 ,),
          CustomAppbar(title: 'Edit Note', icon: Icons.check),
           SizedBox(height:50),
           CustomTextField(hint: 'title'),
            SizedBox(height:20),
             CustomTextField(hint: 'content',maxline: 5,),
        ],
      ),
    );
  }
}