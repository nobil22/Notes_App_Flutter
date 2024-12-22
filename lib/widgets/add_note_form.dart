import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
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
  String? title, subtitle;
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
                subtitle = value;
              },
              hint: 'Content',
              maxline: 5,
            ),
            const SizedBox(height: 20),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  isloading: state is AddNoteLoading?true:false,
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      var cuurentdate=DateTime.now();
                      var formatedate=DateFormat('dd-mm-yyyy').format(cuurentdate);
                      var noteModel = NoteModel(
                          title: title!,
                          subtitle: subtitle!,
                          color: Colors.orange.value,
                          date:formatedate,);
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidatemode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
              },
            ),
            const SizedBox(height: 10),
          ],
        ));
  }
}
