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
    rating: 2,
    startTimes: ['9:00 am', '11:00 am'],
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/bukit_air.jpg',
    name: 'Bukit Air',
    type: 'Cave',
    rating: 5,
    startTimes: ['9:00 am', '11:00 am'],
    price: 30,
  )
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/gua_kelam.jpg',
    city: 'Gua Kelam',
    country: 'Cave',
    description: 'flejnf',
    activities: activities
  ),
  Destination(
    imageUrl: 'assets/images/bukit_air.jpg',
    city: 'Bukit Air',
    country: 'Mountain',
    description: 'flejnf',
    activities: activities
  )
];
