import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coded Library"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Text("data"),
        ElevatedButton(onPressed: () {}, child: Text("Enter Library")),
        ElevatedButton(onPressed: () {}, child: Text("View Members"))
      ]),
    );
  }
}
