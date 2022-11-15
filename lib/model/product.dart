class Product {
  Product({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
  });

  String id;
  String image;
  String name;
  int price;
  double rate;

  factory Product.json(Map<String, dynamic> json) => Product(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        price: json["price"],
        rate: json["rate"],
      );
}

final dummyProduct = [
  Product(
      id: '1',
      image: 'asset/1.png',
      name: 'Stylish Chair',
      price: 170,
      rate: 4.8),
  Product(
      id: '2',
      image: 'asset/2.png',
      name: 'Modern Table',
      price: 75,
      rate: 4.9),
  Product(
      id: '3',
      image: 'asset/3.png',
      name: 'Wooden Console',
      price: 240,
      rate: 4.7),
  Product(
      id: '4',
      image: 'asset/4.png',
      name: 'Brown Arm Chair',
      price: 210,
      rate: 4.9),
];
