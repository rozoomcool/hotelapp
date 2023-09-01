import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  List<String> images;

  Carousel({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      CarouselSlider.builder(
        itemCount: images.length,
        itemBuilder: (context, index, realIndex) => SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ))),
        options: CarouselOptions(
            enlargeCenterPage: true,
            viewportFraction: 1,
            height: (600 * MediaQuery.of(context).size.width) / 800 - 32),
      ),
      Container(
        padding: const EdgeInsets.only(
            left: 10.0, top: 5.0, right: 10.0, bottom: 5.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.black),
              width: 7,
              height: 7,
            ),
            const SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.black.withOpacity(0.22)),
              width: 7,
              height: 7,
            ),
            const SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.black.withOpacity(0.17)),
              width: 7,
              height: 7,
            ),
            const SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.black.withOpacity(0.10)),
              width: 7,
              height: 7,
            ),
            const SizedBox(width: 5,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.black.withOpacity(0.05)),
              width: 7,
              height: 7,
            ),
          ],
        ),
      ),
    ]);
  }
}
