import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
  final String id;
  final String name;
  final String category;
  final List<String> imageUrl;
  final String oldPrice;
  final List<Size> sizes;
  final String price;
  final String description;
  final String title;

  Products({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.oldPrice,
    required this.sizes,
    required this.price,
    required this.description,
    required this.title,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    id: json["id"],
    name: json["name"],
    category: json["category"],
    imageUrl: List<String>.from(json["imageUrl"].map((x) => x)),
    oldPrice: json["oldPrice"],
    sizes: List<Size>.from(json["sizes"].map((x) => Size.fromJson(x))),
    price: json["price"],
    description: json["description"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "category": category,
    "imageUrl": List<dynamic>.from(imageUrl.map((x) => x)),
    "oldPrice": oldPrice,
    "sizes": List<dynamic>.from(sizes.map((x) => x.toJson())),
    "price": price,
    "description": description,
    "title": title,
  };
}

class Size {
  final String size;
  final bool isSelected;

  Size({
    required this.size,
    required this.isSelected,
  });

  factory Size.fromJson(Map<String, dynamic> json) => Size(
    size: json["size"],
    isSelected: json["isSelected"],
  );

  Map<String, dynamic> toJson() => {
    "size": size,
    "isSelected": isSelected,
  };
}
