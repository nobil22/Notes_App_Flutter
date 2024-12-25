import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/colores_list_view.dart';

class EditNotecoloresList extends StatefulWidget {
  const EditNotecoloresList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotecoloresList> createState() => _EditNotecoloresListState();
}

class _EditNotecoloresListState extends State<EditNotecoloresList> {
  late int currentindex;
  @override
  void initState() {
    currentindex = kColoers.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColoers.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                widget.note.color = kColoers[index].value;
                setState(() {});
              },
              child: coloeritem(
                color: kColoers[index],
                isActive: currentindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
