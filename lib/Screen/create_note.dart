import 'package:flutter/material.dart';
import 'package:note_app/model/note_model.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({super.key, required this.onCreateNote});

  final Function(NoteModel) onCreateNote;
  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  final titlecontroller = TextEditingController();
  final storyContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create new Note')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(label: Text('Title')),
            ),
            TextField(
              controller: storyContoller,
              decoration: InputDecoration(
                label: Text('story'),
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (titlecontroller.text.isEmpty) return;
          if (storyContoller.text.isEmpty) return;

          widget.onCreateNote(
            NoteModel(title: titlecontroller.text, story: storyContoller.text),
          );
          Navigator.of(context).pop();
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
