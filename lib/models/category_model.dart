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
        name: 'Пепперони фреш',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/e9624d2bf1ae41598cd6635c0d3ed0f6_584x584.jpeg',
    ),
    const Category(
      name: 'Диабло',
      imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/2c7a83e078b44156a7ad774389ed7713_584x584.jpeg',
    ),
    const Category(
      name: 'Сырный цыпленок',
      imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/36785e0eea834174bf358ac2682aea4d_584x584.jpeg',
    ),
    const Category(
      name: 'Мясная',
      imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/b10dd95184eb49d39a739d75b8cbfeaf_584x584.jpeg',
    ),
  ];
}