import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task_umatkereev_application/features/room_card.dart';

import '../features/custom_button.dart';

class HotelDetailsScreen extends StatelessWidget{
  const HotelDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: SvgPicture.asset('assets/arrow_left.svg'), onPressed: () => Navigator.pop(context),),
        centerTitle: true,
        title: Text(
          'Steigenberger Makadi',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 1,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8.0,),
            RoomCard(),
            const SizedBox(height: 8.0,),
            RoomCard(),
            const SizedBox(height: 8.0,)
          ],
        ),
      ),
    );
  }
  
}