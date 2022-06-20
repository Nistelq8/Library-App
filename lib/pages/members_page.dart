import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:library_app/models/members_list.dart';

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
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_rounded))
        ],
      ),
      body: ListView.builder(
          itemCount: Members.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
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
            );
          }),
    );
  }
}
