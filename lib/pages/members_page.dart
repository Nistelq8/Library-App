import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:library_app/models/members_list.dart';
import 'package:library_app/pages/members_details.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<members> Members = members.LibMembers;
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 247, 220, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(161, 152, 130, 1),
        title: Center(child: Text("Member's List")),
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
                  //  add a page for adding a book
                },
                child: Icon(Icons.add_box_rounded),
              )),
        ],
        // actions: [
        // IconButton(onPressed: () {}, icon: Icon(Icons.add_box_rounded))
        // ],
      ),
      body: ListView.builder(
          itemCount: Members.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MemberDetails(LibMembers: Members[index]);
                  }));

                  // context.push("/bookdetails");
                },
                child: Card(
                  color: Color.fromRGBO(230, 221, 198, 1),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("First Name: ${Members[index].firstname}",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("Last Name: ${Members[index].Lastname}",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Membership type: ${Members[index].membershipType}",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        )
                      ]),
                ),
              ),
            );
          }),
    );
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
    List<members> Members = members.LibMembers;
    // TODO: implement buildSuggestions
    // throw UnimplementedError();
    return ListView.builder(
      itemCount: members.LibMembers.length,
      itemBuilder: (context, index) {
        final members = Members[index];

        return ListTile(
          title: Text(members.Lastname),
          onTap: () {
            query = members.Lastname;
            showResults(context);
          },
        );
      },
    );
  }
}
