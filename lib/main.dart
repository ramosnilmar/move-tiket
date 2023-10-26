import 'package:flutter/material.dart';
import 'package:movie_ticket_app/screen/booking_screen.dart';
import 'package:movie_ticket_app/screen/home_screen.dart';
import 'package:movie_ticket_app/screen/welcome_screen.dart';
import 'package:movie_ticket_app/utils/colors.dart';
import 'package:movie_ticket_app/utils/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: CustomColors.scaffoldColor),
      home: const WelcomeScreen(),
      routes: {
        Routes.home: (context) => HomeScreen(),
        Routes.booking: (context) => BookingScreen(),
      },
    );
  }
}
