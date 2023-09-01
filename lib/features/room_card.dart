import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task_umatkereev_application/features/carousel.dart';
import 'package:test_task_umatkereev_application/features/chips_wrap.dart';
import 'package:test_task_umatkereev_application/features/custom_button.dart';

class RoomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Carousel(
              images: ['assets/hotel_room.png'],
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'Стандартный с видом на бассейн или сад',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 8.0,
          ),
          ChipsWrap(chips: const ['Все включено', 'Кондиционер']),
          Chip(
              backgroundColor: const Color(0xFF0D72FF).withOpacity(0.1),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Подробнее о номере',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: const Color(0xFF0D72FF)),
                  ),
                  const SizedBox(
                    width: 2.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 6.0, bottom: 6.0),
                    child: SvgPicture.asset(
                      'assets/arrow_right.svg',
                      color: const Color(0xFF0D72FF),
                    ),
                  ),
                  // const Icon(Icons.arrow_forward_ios_rounded, color: Color(0xFF0D72FF), weight: 2,)
                ],
              )),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '186 600 ₽',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                'за 7 ночей с перелётом',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: const Color(0xFF828796),
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(height: 16.0,),
          CustomButton(label: 'Выбрать номер', onPressed: () {})
        ],
      ),
    );
  }
}
