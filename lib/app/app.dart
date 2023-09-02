import 'package:flutter/material.dart';
import 'package:test_task_umatkereev_application/presentation/booking_screen.dart';
import 'package:test_task_umatkereev_application/presentation/hotel_details_screen.dart';
import 'package:test_task_umatkereev_application/presentation/hotel_main_screen.dart';
import 'package:test_task_umatkereev_application/presentation/order_status_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: false,
          fontFamily: 'SF Pro Display',
          textTheme: Theme.of(context).textTheme.copyWith(
                  titleLarge: const TextStyle(
                color: Color(0xFF000000),
                fontSize: 18,
                fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500
              ),
            bodyMedium: const TextStyle(
              color: Color(0xFF000000),
              fontSize: 16,
              fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400
            ),
            labelMedium: const TextStyle(
                color: Color(0xFF828796),
                fontSize: 16,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500
            ),
            labelSmall: const TextStyle(
                color: Color(0xFF828796),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              letterSpacing: 0.1
            ),
            displayLarge: const TextStyle(
              color: Color(0xFF000000),
              fontSize: 30,
              fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w600
            ),
            displayMedium: const TextStyle(
              color: Color(0xFF000000),
              fontSize: 22,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500
            ),
            displaySmall: const TextStyle(
                color: Color(0xFF000000),
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500
            ),
          )),
      routes: {
        '/': (context) => const HotelMainScreen(),
        '/hotel_details': (context) => const HotelDetailsScreen(),
        '/booking': (context) => const BookingScreen(),
        '/order_status': (context) => const OrderStatusScreen()
      },
    );
  }
}
