import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/models/members_list.dart';
import 'package:library_app/pages/main_library_page.dart';
import 'package:library_app/pages/members_page.dart';

class homePage extends StatelessWidget {
  homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(254, 247, 220, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(161, 152, 130, 1),
          title: Center(child: Text("Coded Library")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Transform.scale(
                  scale: 0.5, child: Image.asset("assets/images/reading.gif")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(194, 184, 163, 1)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MainLibraryPage();
                    }));
                  },
                  child: Text("Enter Library")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(194, 184, 163, 1)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MembersPage();
                    }));
                  },
                  child: Text("Member's List"))
            ],
          ),
        ));
  }
}


// Colors used 
// rgb(254, 247, 220) for scaffold
// rgb(230, 221, 198) for cards
// rgb(194, 184, 163) for elevated button
// rgb(161, 152, 130) for appbar