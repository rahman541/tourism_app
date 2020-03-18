import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/gua_kelam.jpg',
    name: 'Gua Kelam',
    type: 'Cave',
    rating: 5,
    price: 30
  )
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/gua_kelam.jpg',
    city: 'Gua Kelam',
    country: 'Cave',
    description: 'flejnf',
    activities: activities
  )
];
