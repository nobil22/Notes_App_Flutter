import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes/notes_cubit_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CustomAppbar(
            onPressed: () {
              widget.note.title=title??widget.note.title;
              widget.note.subtitle=subtitle??widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).FetchAllNotes();
              Navigator.pop(context);
              

            },
            title: widget.note.title,
            icon: Icons.check,
          ),
          const SizedBox(height: 50),
          CustomTextField ( 
            
            onChanged: (p0) {
              title=p0;
            },
            hint: 'title',),
          const SizedBox(height: 20),
           CustomTextField(
            onChanged: (p0) {
              subtitle=p0;
            },
            hint: widget.note.subtitle,
            maxline: 5,
          ),
        ],
      ),
    );
  }
}
