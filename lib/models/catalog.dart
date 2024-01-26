
class CatalogueModel{
    static  List<Item> items = [];
}

class Item{
  late final num id;
  late final String name;
  late final String description;
  late final String category;
  late final num price;
  late final num stock;
  late final String image_url;
  late final String hexColor;


  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.price,
    required this.stock,
    required this.hexColor,
    required this.image_url,
  });

  // constructor for json data

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"] ?? 0, // Replace 0 with the default value for id
      name: map["name"] ?? "", // Replace "" with the default value for name
      category: map["category"] ?? "", // Replace "" with the default value for category
      price: map["price"] ?? 0, // Replace 0 with the default value for price
      stock: map["stock"] ?? 0, // Replace 0 with the default value for stock
      image_url: map["image_url"] ?? "", // Replace "" with the default value for image_url
      description: map["description"] ?? "", // Replace "" with the default value for description
      hexColor: map["hexColor"] ?? "", // Replace "" with the default value for hexColor
    );
  }


  // convert map data to json
  toMap()=>{
    "id": id,
    "name": name,
    "category": category,
    "price": price,
    "stock": stock,
    "image_url": image_url,
    "description": description,
    "hexColor": hexColor
  };
}