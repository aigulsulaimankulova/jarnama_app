// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Product {
  const Product({
    this.image,
    required this.title,
    required this.description,
    required this.datetime,
    required this.phoneNumber,
    required this.userName,
    required this.address,
    required this.prices,
  });

  final List<String>? image;
  final String title;
  final String description;
  final String datetime;
  final String phoneNumber;
  final String userName;
  final String address;
  final String prices;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
      'description': description,
      'datetime': datetime,
      'phoneNumber': phoneNumber,
      'userName': userName,
      'address': address,
      'prices': prices,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      image: map['image'] != null
          ? List<String>.from((map['image'] as List<String>))
          : null,
      title: map['title'] as String,
      description: map['description'] as String,
      datetime: map['datetime'] as String,
      phoneNumber: map['phoneNumber'] as String,
      userName: map['userName'] as String,
      address: map['address'] as String,
      prices: map['prices'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
