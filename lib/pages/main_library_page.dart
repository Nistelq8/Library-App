import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/models/books_list.dart';
import 'package:library_app/pages/add_book_page.dart';
import 'package:library_app/pages/bookdetails.dart';
import 'package:library_app/pages/homepage.dart';
import 'package:library_app/Provider/lib_provider.dart';

class MainLibraryPage extends StatelessWidget {
  MainLibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<books> Books = LibProvider.LibBooks;
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 247, 220, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(161, 152, 130, 1),
        title: Center(child: Text("Books")),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AddBook();
                  }));
                  //  add a page for adding a book
                },
                child: Icon(Icons.add_box_rounded),
              )),
        ],
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.add_box_rounded))
        // ],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 350,
              childAspectRatio: .9,
              crossAxisSpacing: 1.5,
              mainAxisSpacing: 1.5),
          itemCount: Books.length,
          itemBuilder: (Context, index) {
            //  ListView.builder(
            //     itemCount: Books.length,
            //     itemBuilder: (context, index) {
            return Container(
                height: 100,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BookDetails(libBooks: Books[index]);
                    }));

                    // context.push("/bookdetails");
                  },
                  child: Card(
                    color: Color.fromRGBO(230, 221, 198, 1),
                    // child: Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    child: Column(
                      children: [
                        // Padding(
                        // padding:
                        //  const EdgeInsets.all(8.0),
                        // child:
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            Books[index].image,
                            width: 100,
                          ),
                        ),
                        // ),
                        Expanded(
                            child: Text(
                          Books[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        )),
                      ],
                    ),
                    // ],
                  ),
                )
                // ),
                );
          }),
    );
    ;
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
    // TODO: implement buildActions
    // throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      icon: Icon(Icons.clear, color: Colors.black),
      onPressed: () {
        if (query.isEmpty) {
          close(context, null);
        } else {
          query = '';
        }
      },
    );
    // TODO: implement buildLeading
    // throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) => Container(
          child: Text(
        query,
        style: TextStyle(fontSize: 20),
      ));
  // TODO: implement buildResults
  // throw UnimplementedError();

  @override
  Widget buildSuggestions(BuildContext context) {
    List<books> Books = LibProvider.LibBooks;
    // TODO: implement buildSuggestions
    // throw UnimplementedError();
    return ListView.builder(
      itemCount: LibProvider.LibBooks.length,
      itemBuilder: (context, index) {
        final book = Books[index];

        return ListTile(
          leading: Image.asset(book.image),
          title: Text(LibProvider.LibBooks[index].title),
          onTap: () {
            query = book.title;
            showResults(context);
          },
        );
      },
    );
  }
}
