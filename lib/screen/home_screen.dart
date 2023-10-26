import 'package:flutter/material.dart';
import 'package:movie_ticket_app/utils/colors.dart';
import 'package:movie_ticket_app/utils/routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> movies = [
    "Ant Man 3",
    "Aquaman 2",
    "GOTG Vol 3",
    "Shazam 2",
  ];
  final List<String> movies2 = [
    "GOTG Vol 3",
    "Shazam 2",
    "Aquaman 2",
    "Ant Man 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.sort),
        centerTitle: true,
        title: const Text(
          'Movie Ticket',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.search,
                  size: 28,
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.filter_alt_outlined,
                  size: 28,
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Playing Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'View All',
                      style: TextStyle(
                        color: CustomColors.yellowColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 390,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          onTap: () => Navigator.of(context).pushNamed(
                              Routes.booking,
                              arguments: movies[index]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "images/${movies[index]}.jpg",
                              height: 280,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          movies[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: CustomColors.yellowColor,
                              size: 16,
                            ),
                            SizedBox(width: 9),
                            Text(
                              '9.0',
                              style: TextStyle(
                                color: CustomColors.yellowColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Icon(
                              Icons.access_time_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            Text("2h 15m",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: CustomColors.bgTextColor,
                    ),
                    child: const Text(
                      'COMMING SOON',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'View All',
                      style: TextStyle(
                        color: CustomColors.yellowColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          onTap: () => {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "images/${movies2[index]}.jpg",
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          movies2[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
