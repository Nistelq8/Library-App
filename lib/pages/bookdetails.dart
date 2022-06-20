import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:library_app/models/books_list.dart';
import 'package:library_app/Provider/lib_provider.dart';

class BookDetails extends StatelessWidget {
  final books libBooks;

  BookDetails({required this.libBooks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(254, 247, 220, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(161, 152, 130, 1),
          title: Center(child: Text("Book Details")),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  libBooks.image,
                  height: 200,
                  width: 200,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      libBooks.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(libBooks.author),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
