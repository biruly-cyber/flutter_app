
class CatalogueModel{
    static  List<Item> items = [
      Item(
        id: 1,
        name: "Laptop",
        description: "Powerful laptop with high-performance specifications.",
        category: "Electronics",
        price: 999.99,
        stock: 50,
        image_url: "https://cdn.thewirecutter.com/wp-content/media/2023/06/bestlaptops-2048px-9765.jpg",
        hexColor: "#0000FF",
      ),
      Item(
        id: 1,
        name: "Mobile",
        description: "Powerful mobile with high-performance specifications.",
        category: "Electronics",
        price: 9.99,
        stock: 50,
        image_url: "https://img.freepik.com/free-psd/smartphone-mockup_1310-920.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1705795200&semt=ais",
        hexColor: "#0000FF",
      ),
    ];
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

  factory Item.fromMap(Map<String, dynamic> map){
    return Item(
      id: map["id"],
      name: map["name"],
      category: map["category"],
      price: map["price"],
      stock: map["stock"],
      image_url: map["image_url"],
      description: map["description"],
      hexColor: map["hexColor"]
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