import 'package:flutter/material.dart';
import 'package:location_flutter/models/models.dart';

class HomeCarouselCard extends StatelessWidget {
  final Category category;

  const HomeCarouselCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/catalog', arguments: category);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 5.0,
          vertical: 20.0,
        ),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(const Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(category.imageUrl,
                    fit: BoxFit.contain, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      category.name,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!.copyWith(color: Colors.white)
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
