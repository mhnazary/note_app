import 'package:flutter/material.dart';
import 'package:note_app/Screen/create_note.dart';
import 'package:note_app/model/note_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<NoteModel> notes = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter NoteApp')),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (cts, index) => Text('data'),
      ),
    );
  }
}
