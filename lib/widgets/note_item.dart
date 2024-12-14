import 'package:flutter/material.dart';
import 'package:note_app/views/edit_view_.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    
      return  GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)
          {
            return EditView();
          },),);
        },
        child: Container(
          
            
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16,top: 16,bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
              
                    title: const Text(
                      'Flutter Tipes',
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    subtitle:  Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        'Build your career with Mohamed Nabil',
                        style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 24,),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 12,right: 30),
                    child: Text(
                      'mai 21,2024',
                      style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          
              
        ),
      );
  }
}
