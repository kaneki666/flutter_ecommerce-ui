class ImageData {
  int id;
  String imageUrl;
  String title;
  int quantity;
  double price;

  ImageData({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.quantity,
    required this.price,
  });
}

var imageList = [
  ImageData(
      id: 1,
      imageUrl: 'assets/images/pizza2.png',
      title: "Pizza",
      quantity: 1,
      price: 0.99),
  ImageData(
      id: 2,
      imageUrl: 'assets/images/bbq2.png',
      title: "Bbq",
      quantity: 1,
      price: 2.49),
  ImageData(
      id: 3,
      imageUrl: 'assets/images/sushi2.png',
      title: "Sushi",
      quantity: 1,
      price: 0.69),
  ImageData(
      id: 4,
      imageUrl: 'assets/images/burger2.png',
      title: "Burger",
      quantity: 1,
      price: 0.53),
  ImageData(
      id: 5,
      imageUrl: 'assets/images/fries2.png',
      title: "Fries",
      quantity: 1,
      price: 0.99),
  ImageData(
      id: 6,
      imageUrl: 'assets/images/nachos.png',
      title: "Nachos",
      quantity: 1,
      price: 1.99),
];
