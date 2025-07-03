import 'package:flutter/material.dart';

import 'package:note_app/model/note_model.dart';

class NoteView extends StatelessWidget {
  const NoteView({
    Key? key,
    required this.note,
    required this.index,
    required this.delete,
  }) : super(key: key);

  final NoteModel note;
  final int index;
  final Function(int index) delete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            note.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          actions: [
            TextButton(
              onPressed: () async {
                final shouldDelete = await showDialog<bool>(
                  context: context,
                  builder:
                      (ctx) => AlertDialog(
                        title: Text('Delete Note'),
                        content: Text(
                          'Are you sure you want to delete this note?',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(ctx, false),
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(ctx, true),
                            child: Text('Delete'),
                          ),
                        ],
                      ),
                );

                if (shouldDelete ?? false) {
                  delete(index);
                  Navigator.of(context).pop();
                }
              },
              child: Icon(Icons.delete),
            ),
          ],
        ),
        body: Column(children: [Text(note.story)]),
      ),
    );
  }
}
