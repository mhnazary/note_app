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

  void onCreatedNote(NoteModel note) {
    setState(() {
      notes.add(note);
    });
  }

  void onDeleteNote(int index) {
    notes.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter NoteApp')),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder:
            (cts, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notes[index].title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(notes[index].story),
                    ],
                  ),
                ),
              ),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (cts) => CreateNote(onCreateNote: onCreatedNote),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
