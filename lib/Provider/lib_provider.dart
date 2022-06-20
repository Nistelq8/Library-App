import 'package:flutter/cupertino.dart';
import 'package:library_app/models/books_list.dart';
import 'package:flutter/material.dart';

class LibProvider extends ChangeNotifier {
  static List<books> LibBooks = [
    books(
        author: "Jorder Peterson",
        title: "12 Rules for Life: An Antidote to Chaos",
        genre: ["Self-Help"],
        available: false,
        borrowedBy: [3],
        image: 'assets/images/rulesforlife.jpg'),
    books(
        author: "Blake Croush",
        title: "Dark Matter",
        genre: ["Sci-Fi", "Thriller"],
        available: false,
        borrowedBy: [3],
        image: 'assets/images/darkmatter.jpg'),
    books(
        author: "Robin Sloan",
        title: "Mr. Penumbra's 24-Hour Bookstore",
        genre: ["Suspense", "Fantasy"],
        available: false,
        borrowedBy: [1, 3, 5, 1],
        image: 'assets/images/bookstore.jpg'),
    books(
        author: "Paul Kalanithi",
        title: "When Breath Becomes Air",
        genre: ["Biography"],
        available: true,
        borrowedBy: [2, 5],
        image: 'assets/images/whenbreath.jpg'),
    books(
        author: "Eric Ries",
        title: "The Lean Startup",
        genre: ["Business", "Entrepreneurship"],
        available: false,
        borrowedBy: [4, 1, 2],
        image: 'assets/images/theleanstartup.jpg'),
    books(
        author: "George R.R. Martin",
        title: "A Strom of Swords",
        genre: ["Fantasy"],
        available: true,
        borrowedBy: [],
        image: 'assets/images/astormofswords.jpg'),
    books(
        author: "Leigh Bardugo",
        title: "Six of Crows",
        genre: ["Fantasy"],
        available: false,
        borrowedBy: [4, 3, 2, 1, 5],
        image: 'assets/images/sixofcrows.jpg'),
    books(
        author: "Agatha Christie",
        title: "Curtain: Poirot's Last Case",
        genre: ["Crime", "Mystery"],
        available: false,
        borrowedBy: [3, 5],
        image: 'assets/images/Curtain.jpg'),
    books(
        author: "Elif Shafak",
        title: "The Forty Rules of Love",
        genre: ["Fiction"],
        available: false,
        borrowedBy: [5, 1],
        image: 'assets/images/rulesoflove.jpg'),
    books(
        author: "Leigh Bardugo",
        title: "The Language of Thorns: Midnight Tales and Dangerous Magic",
        genre: ["Fantasy"],
        available: false,
        borrowedBy: [5],
        image: 'assets/images/thorns.jpg')
  ];
  void addBook(
      {required String author, required String title, required String genre}) {
    LibBooks.add(books(author: author, title: title, genre: [genre]));
    notifyListeners();
  }

  //  void addBook(Book book) {
  //   LibBooks.add(book);
  // }
}
