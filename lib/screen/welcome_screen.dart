import 'package:flutter/material.dart';
import 'package:movie_ticket_app/utils/colors.dart';
import 'package:movie_ticket_app/utils/routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage('images/background.jpeg'),
                fit: BoxFit.cover,
                opacity: 0.4),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Movie Ticket',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Grab your ticket now!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  )),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, Routes.home),
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.yellowColor.withOpacity(0.9),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
