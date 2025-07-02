import 'package:flutter/material.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({super.key});

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create new Note')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [TextField(), TextField()]),
      ),
    );
  }
}
