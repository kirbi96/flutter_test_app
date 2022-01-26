import 'package:flutter/material.dart';
import 'package:location_flutter/models/models.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: 150,
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: 65,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5 - 10,
              height: 85,
              decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
            )),
        Positioned(
            top: 75,
            left: 10,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5 - 30,
              height: 65,
              decoration: const BoxDecoration(color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '${product.price} R',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: IconButton(
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ))
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
