import 'package:flutter/material.dart';
import 'package:test_task_umatkereev_application/features/custom_button.dart';
import 'package:test_task_umatkereev_application/features/hotel_about_card.dart';
import 'package:test_task_umatkereev_application/features/hotel_main_info_card.dart';

class HotelMainScreen extends StatelessWidget {
  const HotelMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Отель',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 1,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        shrinkWrap: true,
        children: const [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HotelMainInfoCard(),
              SizedBox(
                height: 8.0,
              ),
              HotelAboutCard()
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 12),
          child: CustomButton(
            label: 'К выбору номера',
            onPressed: () => Navigator.pushNamed(context, '/hotel_details'),
          ),
        ),
      ),
    );
  }
}
