import "package:first_app/models/catalog.dart";
import "package:first_app/widget/drawer.dart";
import "package:first_app/widget/item_widget.dart";
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogueModel.items[0]);
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
      body:
         ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          },

      ),
      drawer: const MyDrawer(),
    );
  }
}
