import 'package:first_app/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item  item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding to the content
        leading: SizedBox(
          width: 50.0, // Set a fixed width for the leading widget
          child: Image.network(
            item.image_url,
            fit: BoxFit.cover, // Adjust the fit as needed
          ),
        ),
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Text("\$${item.price.toString()}"),
      ),
    );

  }
}
