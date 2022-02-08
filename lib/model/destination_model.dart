import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String time;
  final String imageUrl;
  final double rating;
  final int price;

  const DestinationModel({
    required this.id,
    this.name = '',
    this.city = '',
    this.time = '',
    this.imageUrl = '',
    this.rating = 0.0,
    this.price = 0,
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        name: json['name'],
        city: json['city'],
        time: json['time'],
        imageUrl: json['imageUrl'],
        rating: json['rating'].toDouble(),
        price: json['price'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'city': city,
        'time': time,
        'imageUrl': imageUrl,
        'rating': rating,
        'price': price,
      };

  @override
  List<Object?> get props => [id, name, city, time, imageUrl, rating, price];
}
