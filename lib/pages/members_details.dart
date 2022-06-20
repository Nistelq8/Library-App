import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:library_app/models/books_list.dart';
import 'package:library_app/Provider/lib_provider.dart';
import 'package:library_app/models/members_list.dart';

class MemberDetails extends StatelessWidget {
  final members LibMembers;

  MemberDetails({required this.LibMembers});

  @override
  Widget build(BuildContext context) {
    List<members> memberDetails = members.LibMembers;
    return Scaffold(
        backgroundColor: Color.fromRGBO(254, 247, 220, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(161, 152, 130, 1),
          title: Center(child: Text("Members Details")),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 150,
            child: Card(
              color: Color.fromRGBO(230, 221, 198, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("First Name: ${LibMembers.firstname}"),
                  Text("Last Name: ${LibMembers.Lastname}"),
                  Text("Membership Type: ${LibMembers.membershipType}"),
                ],
              ),
            ),
          ),
        ));
  }
}
