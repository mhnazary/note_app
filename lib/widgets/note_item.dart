// import 'package:flutter/material.dart';
// import 'package:note_app/model/note_model.dart';

// class NoteItem extends StatefulWidget {

//   const NoteItem({Key? key, required this.note, required this.index})
//     : super(key: key);

//   final NoteModel note;
//   final int index;

//   void jan(){
//     print(index);
//   }

//   @override
//   State<NoteItem> createState() => _NoteItemState();
// }

// class _NoteItemState extends State<NoteItem> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//             note
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             Text(note.story),
//           ],
//         ),
//       ),
//     );
//   }
// }
