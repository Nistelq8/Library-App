import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/models/books_list.dart';
import 'package:library_app/pages/homepage.dart';

class MainLibraryPage extends StatelessWidget {
  MainLibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<books> Books = books.LibBooks;
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 247, 220, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(161, 152, 130, 1),
        title: Center(child: Text("Books")),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_rounded))
        ],
      ),
      body: ListView.builder(
          itemCount: Books.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              child: Card(
                  color: Color.fromRGBO(230, 221, 198, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(
                        Books[index].title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      Image.asset(Books[index].image)
                    ],
                  )),
            );
          }),
    );
  }
}
