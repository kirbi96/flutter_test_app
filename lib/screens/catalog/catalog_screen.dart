import 'package:flutter/material.dart';
import 'package:location_flutter/models/models.dart';
import 'package:location_flutter/widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => CatalogScreen(category: category),
    );
  }

  final Category category;

  const CatalogScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProduct = Product.products.where((element) => element.category == category.name).toList();

    return Scaffold(
        appBar: CustomAppBar(title: category.name),
        bottomNavigationBar: const CustomNavBar(),
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 16.0,
          ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.1),
            itemCount: categoryProduct.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductCard(
                product: categoryProduct[index],
                widthFactor: 2.2,
              );
            }
        )
    );
  }
}
