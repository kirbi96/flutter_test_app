import 'package:flutter/material.dart';
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
        appBar: const CustomAppBar(title: 'Мир окон'),
        bottomNavigationBar: const CustomNavBar(),
        body: Column());
  }
}
