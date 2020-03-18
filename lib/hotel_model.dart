class Hotel {
  String imageUrl;
  String name;
  String address;
  int prices;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.prices,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/gua_kelam.jpg',
    name: 'Hotel Seri Malaysia',
    address: 'Kangar',
    prices: 175,
  ),
];