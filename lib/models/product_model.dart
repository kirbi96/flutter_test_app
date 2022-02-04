import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isPopular;
  final bool isRecommended;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isRecommended,
  });

  @override
  List<Object?> get props => [name, category, imageUrl, price, isPopular, isRecommended];


  static List<Product> products = [
    const Product(
        name: 'Гавайская',
        category: 'Пиццы',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/4749ca7de7e247daa69a685714f06aa3_584x584.jpeg',
        price: 395,
        isPopular: true,
        isRecommended: false,
    ),
    const Product(
        name: 'Фикси-пицца',
        category: 'Пиццы',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/1673ed1b5bea4482aef8a64827207b73_584x584.jpeg',
        price: 449,
        isPopular: false,
        isRecommended: true
    ),
    const Product(
        name: 'Дв. пепперони',
        category: 'Пиццы',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/052c40e826264c6c8853cef189c8d34f_584x584.jpeg',
        price: 395,
        isPopular: false,
        isRecommended: true,
    ),
    const Product(
        name: 'Додстер',
        category: 'Добавки',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/f901922426894718b3fdfc4158899b1f_584x584.jpeg',
        price: 145,
        isPopular: true,
        isRecommended: true
    ),
    const Product(
        name: 'Ланчбокс',
        category: 'Добавки',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/33bbbcfd262e4084a1e0671160da55bb_584x584.jpeg',
        price: 299,
        isPopular: true,
        isRecommended: true
    ),
    const Product(
        name: 'Швепс',
        category: 'Напитки',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/8a299824e6fa4fbfaf1ef66c24721603_292x292.jpeg',
        price: 245,
        isPopular: true,
        isRecommended: true
    ),
    const Product(
        name: 'Кола',
        category: 'Напитки',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/c99ec0985f37456a8084928dfe8ed379_292x292.jpeg',
        price: 345,
        isPopular: true,
        isRecommended: true
    ),
  ];
}

