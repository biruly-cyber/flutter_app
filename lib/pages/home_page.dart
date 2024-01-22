import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blurock"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          child: Text("hi flutter  fo  days."),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
