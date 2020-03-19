class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/gua_kelam.jpg',
    name: 'Hotel Seri Malaysia',
    address: 'Kangar',
    price: 175,
  ),
];