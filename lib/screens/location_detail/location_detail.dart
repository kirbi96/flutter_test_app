import 'package:flutter/material.dart';
import 'package:location_flutter/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
             TextSection(title: "1", myColor: Colors.amber),
             TextSection(title: "2", myColor: Colors.deepOrange),
             TextSection(title: "3", myColor: Colors.green),
            ]));
  }
}
