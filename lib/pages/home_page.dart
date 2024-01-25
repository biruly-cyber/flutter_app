import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:first_app/models/catalog.dart';
import 'package:first_app/widget/drawer.dart';
import 'package:first_app/widget/item_widget.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState(){
    super.initState();
    loadData();
  }


  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(50, (index) => CatalogueModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Blurock",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: CatalogueModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: CatalogueModel.items[index]);
        },
      ),
      drawer: const MyDrawer(),
    );
  }

  //handle for load json data
  void loadData() async{

       final catalogJson =  await rootBundle.loadString("assets/files/catalog.json");// here we find the local file from the local device storage
       //now we have to decode the json file using dart converter library
       final decodeJson  =  jsonDecode(catalogJson);

       //now i need product only from json
        var productData =  decodeJson["products"];

        //convert productData into list
        CatalogueModel.items =  List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

        // again call the build method
        setState(() {});
  }
}
