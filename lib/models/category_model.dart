import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl
  });


  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
        name: 'Пиццы',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/e9624d2bf1ae41598cd6635c0d3ed0f6_584x584.jpeg',
    ),
    const Category(
      name: 'Напитки',
      imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/8a299824e6fa4fbfaf1ef66c24721603_292x292.jpeg',
    ),
    const Category(
      name: 'Добавки',
      imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/33bbbcfd262e4084a1e0671160da55bb_292x292.jpeg',
    ),
  ];
}