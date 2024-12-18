import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidatemode = AutovalidateMode.disabled;
  String? title, suptitle;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        autovalidateMode: autovalidatemode,
        child: Column(
          children: [
            const SizedBox(height: 20),
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hint: 'Title',
            ),
            const SizedBox(height: 10),
            CustomTextField(
              onSaved: (value) {
                suptitle = value;
              },
              hint: 'Content',
              maxline: 5,
            ),
            const SizedBox(height: 20),
            CustomButton(
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                } else {
                  autovalidatemode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            const SizedBox(height: 10),
          ],
        ));
  }
}
