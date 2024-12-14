import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
        children: [
        
          SizedBox(height: 20),
          CustomTextField(hint: 'Title',),
          SizedBox(height: 10),
           CustomTextField(hint: 'Content',maxline: 5,),
           SizedBox(height: 20),
           CustomButton(),
            SizedBox(height: 10),
        
        ],
        ),
      ),
    );
  }
}