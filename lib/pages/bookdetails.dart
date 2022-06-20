import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:library_app/models/books_list.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<books> Books = books.LibBooks;
    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          'assets/images/book.jpg',
          height: 200,
          width: 200,
        ),
        Text(books.LibBooks.first.title),
        Text(books.LibBooks.first.author),
      ],
    ));
  }
}
