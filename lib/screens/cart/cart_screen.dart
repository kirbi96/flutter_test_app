import 'package:flutter/material.dart';
import 'package:location_flutter/widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';
  
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
        builder: (_) => const CartScreen(),
    );
  }
  
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'Cart'),
        bottomNavigationBar: const CustomNavBar(),
        body: Column());
  }
}
