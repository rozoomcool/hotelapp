import 'package:flutter/material.dart';

import 'carousel.dart';

class HotelMainInfoCard extends StatelessWidget {
  const HotelMainInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Carousel(
                images: const [
                  'assets/hotelimage_1.png',
                  'assets/hotelimage_1.png',
                  'assets/hotelimage_1.png',
                  'assets/hotelimage_1.png'
                ],
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Chip(
                backgroundColor: const Color(0xFFFFA800).withOpacity(0.2),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                label: Text(
                  '5 Превосходно',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Color(0xFFFFA800)),
                ),
                avatar: const Icon(
                  Icons.star,
                  color: Color(0xFFFFA800),
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              'Steigenberger Makadi',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text('Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: const Color(0xFF0D72FF))),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'от 134 673 ₽',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  'за тур с перелётом',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF828796),
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
