import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task_umatkereev_application/features/custom_text_form_field.dart';

class TouristCard extends StatefulWidget {
  TouristCard({super.key, required this.closed, required this.title});

  bool closed;
  String title;

  @override
  State<TouristCard> createState() => _TouristCardState();
}

class _TouristCardState extends State<TouristCard> {
  late bool isClosed;

  void toggleClosed() => setState(() => isClosed = !isClosed);

  @override
  void initState() {
    isClosed = widget.closed;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              InkWell(
                onTap: () => toggleClosed(),
                child: Container(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF0D72FF).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6.0)
                  ),
                  child: AnimatedRotation(
                      turns: isClosed ? 1/4 : 3/4,
                      duration: const Duration(milliseconds: 500),
                      child: SvgPicture.asset(
                        'assets/arrow_right.svg',
                        color: const Color(0xFF0D72FF),
                      )),
                ),
              )
            ],
          ),
          !isClosed ? AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                CustomTextFormField(labelText: 'Имя', initialValue: 'Иван'),
                const SizedBox(height: 8.0),
                CustomTextFormField(labelText: 'Фамилия', initialValue: 'Иванов'),
                const SizedBox(height: 8.0),
                CustomTextFormField(labelText: 'Дата рождения', initialValue: null,),
                const SizedBox(height: 8.0),
                CustomTextFormField(labelText: 'Гражданство', initialValue: null,),
                const SizedBox(height: 8.0),
                CustomTextFormField(labelText: 'Номер загранпаспорта', initialValue: null,),
                const SizedBox(height: 8.0),
                CustomTextFormField(labelText: 'Срок действия загранпаспорта', initialValue: null,),
              ],
            ),
          ): Container()
        ],
      ),
    );
  }
}
