import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:location_flutter/models/models.dart';
import 'package:location_flutter/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'Pizza Shop'),
        bottomNavigationBar: const CustomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Category.categories
                    .map((cat) => HomeCarouselCard(category: cat))
                    .toList(),
              )),
              const SectionTitle(title: 'Рекомендуем'),
              ProductCarousel(
                  products: Product.products
                      .where((product) => product.isRecommended)
                      .toList()),
              const SectionTitle(title: 'Популярные'),
              ProductCarousel(
                  products: Product.products
                      .where((product) => product.isPopular)
                      .toList())
            ],
          ),
        ));
  }
}
