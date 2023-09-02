import 'package:flutter/material.dart';

class TableInfoCard extends StatelessWidget {
  const TableInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                flex: 4,
                child: Text('Вылет из',
                    style: Theme.of(context).textTheme.labelMedium)),
            Expanded(
              flex: 5,
              child: Text('Санкт-Петербург',
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
        const SizedBox(height: 16.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                flex: 4,
                child: Text('Страна, город',
                    style: Theme.of(context).textTheme.labelMedium)),
            Expanded(
              flex: 5,
              child: Text('Египет, Хургада',
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
        const SizedBox(height: 16.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                flex: 4,
                child: Text('Даты',
                    style: Theme.of(context).textTheme.labelMedium)),
            Expanded(
              flex: 5,
              child: Text('19.09.2023 – 27.09.2023',
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
        const SizedBox(height: 16.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                flex: 4,
                child: Text('Кол-во ночей',
                    style: Theme.of(context).textTheme.labelMedium)),
            Expanded(
              flex: 5,
              child: Text('7 ночей',
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
        const SizedBox(height: 16.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                flex: 4,
                child: Text('Отель',
                    style: Theme.of(context).textTheme.labelMedium)),
            Expanded(
              flex: 5,
              child: Text('Steigenberger Makadi',
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
        const SizedBox(height: 16.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                flex: 4,
                child: Text('Номер',
                    style: Theme.of(context).textTheme.labelMedium)),
            Expanded(
              flex: 5,
              child: Text('Стандартный с видом на бассейн или сад',
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
        const SizedBox(height: 16.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                flex: 4,
                child: Text('Питание',
                    style: Theme.of(context).textTheme.labelMedium)),
            Expanded(
              flex: 5,
              child: Text('Все включено',
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
      ],
    );
  }
}

// Text('Санкт-Петербург', style: Theme.of(context).textTheme.bodyMedium)
// Table(
// columnWidths: const {1: FractionColumnWidth(.55)},
// children: [
// TableRow(
// children: [
// Text('Вылет из', style: Theme.of(context).textTheme.labelMedium),
// Text('Санкт-Петербург',
// style: Theme.of(context).textTheme.bodyMedium),
// ]),
// TableRow(children: [
// Text('Дата', style: Theme.of(context).textTheme.labelMedium),
// Text('19.09.2023 – 27.09.2023',
// style: Theme.of(context).textTheme.bodyMedium),
// ])
// ],
// )
