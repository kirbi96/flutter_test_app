import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Column(children: [
          Container(
            decoration: const BoxDecoration(color: Colors.deepOrange),
            child: const Text('111'),
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.deepOrange),
            child: const Text('222'),
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.deepOrange),
            child: const Text('333'),
          ),
        ]));
  }
}
