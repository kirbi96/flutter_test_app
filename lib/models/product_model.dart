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
        category: 'pizza',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/4749ca7de7e247daa69a685714f06aa3_584x584.jpeg',
        price: 395,
        isPopular: true,
        isRecommended: false,
    ),
    const Product(
        name: 'Фикси-пицца',
        category: 'pizza',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/1673ed1b5bea4482aef8a64827207b73_584x584.jpeg',
        price: 449,
        isPopular: false,
        isRecommended: true
    ),
    const Product(
        name: 'Дв. пепперони',
        category: 'pizza',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/052c40e826264c6c8853cef189c8d34f_584x584.jpeg',
        price: 395,
        isPopular: false,
        isRecommended: false
    ),
    const Product(
        name: 'Додстер',
        category: 'snack',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/f901922426894718b3fdfc4158899b1f_584x584.jpeg',
        price: 145,
        isPopular: true,
        isRecommended: true
    ),
    const Product(
        name: 'Ланчбокс',
        category: 'snack',
        imageUrl: 'https://dodopizza-a.akamaihd.net/static/Img/Products/33bbbcfd262e4084a1e0671160da55bb_584x584.jpeg',
        price: 299,
        isPopular: true,
        isRecommended: true
    ),
  ];
}

