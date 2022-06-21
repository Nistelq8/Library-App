import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:library_app/pages/main_library_page.dart';

class AddBook extends StatelessWidget {
  const AddBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 247, 220, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(161, 152, 130, 1),
        title: Center(child: Text("Add Book")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: 'Author'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: 'Title'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(hintText: 'Genre'),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(194, 184, 163, 1)),
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                  return MainLibraryPage();
                }));
              },
              child: Icon(Icons.add))
        ],
      ),
    );
  }
}
