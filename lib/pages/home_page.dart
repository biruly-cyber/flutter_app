import "package:first_app/widget/drawer.dart";
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Blurock",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
      ),
      body: const Center(
        child:  Text("hi flutter  fo  days."),
      ),
      drawer: const MyDrawer(),
    );
  }
}
