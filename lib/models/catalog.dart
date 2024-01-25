
class CatalogueModel{
    static final items = [
      Item(
        id: 1,
        name: "Laptop",
        description: "Powerful laptop with high-performance specifications.",
        category: "Electronics",
        price: 999.99,
        stock: 50,
        imageUrl: "https://cdn.thewirecutter.com/wp-content/media/2023/06/bestlaptops-2048px-9765.jpg",
        hexColor: "#0000FF",
      ),
      Item(
        id: 1,
        name: "Mobile",
        description: "Powerful mobile with high-performance specifications.",
        category: "Electronics",
        price: 9.99,
        stock: 50,
        imageUrl: "https://img.freepik.com/free-psd/smartphone-mockup_1310-920.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1705795200&semt=ais",
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
  late final String imageUrl;
  late final String hexColor;


  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.price,
    required this.stock,
    required this.imageUrl,
    required this.hexColor,
  });
}