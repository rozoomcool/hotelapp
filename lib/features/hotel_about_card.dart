import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task_umatkereev_application/features/chips_wrap.dart';

class HotelAboutCard extends StatelessWidget {
  const HotelAboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = ['Удобства', 'Что включено', 'Что не включено'];
    List<String> leadings = [
      'assets/emoji-happy.svg',
      'assets/tick-square.svg',
      'assets/close-square.svg'
    ];

    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Об отеле',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            ChipsWrap(chips: const [
              '3 линия',
              'Платный Wi-Fi в фойе',
              '30 км до аэропорта',
              '1 км до пляжа'
            ]),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF000000).withOpacity(0.9)),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFFBFBFC),
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(15.0),
                  shrinkWrap: true,
                  itemBuilder: (context, i) => ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        horizontalTitleGap: 0,
                        dense: true,
                        leading: SvgPicture.asset(leadings[i]),
                        title: Text(titles[i],
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: const Color(0xFF2c3035),
                                    fontWeight: FontWeight.w500)),
                        subtitle: Text('Самое необходимое',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(color: const Color(0xFF828796))),
                        trailing: SvgPicture.asset('assets/arrow_right.svg'),
                      ),
                  separatorBuilder: (context, i) => Divider(
                        color: const Color(0xFF82879626).withOpacity(0.15),
                        height: 10,
                        indent: 56.0,
                        thickness: 1,
                      ),
                  itemCount: 3),
            ),
          ],
        ),
      ),
    );
  }
}
