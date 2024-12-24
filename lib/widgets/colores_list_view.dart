import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

class coloeritem extends StatelessWidget {
  const coloeritem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 33,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColoresListView extends StatefulWidget {
  const ColoresListView({super.key});

  @override
  State<ColoresListView> createState() => _ColoresListViewState();
}

class _ColoresListViewState extends State<ColoresListView> {
  int currentindex = 0;

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
                BlocProvider.of<AddNoteCubit>(context).color=kColoers[index];
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
