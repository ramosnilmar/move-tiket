import 'package:flutter/material.dart';
import 'package:movie_ticket_app/utils/colors.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({super.key});

  final List<String> format = [
    '2D',
    '3D',
    '4DX',
    'IMAX',
  ];

  @override
  Widget build(BuildContext context) {
    final movie = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.2,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('images/$movie.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.6,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.share_outlined,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 20),
                    child: Text(
                      movie,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const Text(
                        "Format",
                        style: TextStyle(
                          color: CustomColors.yellowColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: index == 1
                                      ? CustomColors.yellowColor
                                          .withOpacity(0.8)
                                      : CustomColors.scaffoldColor,
                                  border: index != 1
                                      ? Border.all(color: Colors.white60)
                                      : null,
                                ),
                                child: Center(
                                  child: Text(
                                    format[index],
                                    style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text(
                  'Select Date',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.date_range_outlined,
                  color: Colors.white,
                  size: 20,
                )
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: index == 1
                            ? CustomColors.yellowColor.withOpacity(0.8)
                            : null,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'S',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '${index + 6}',
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text(
                  'Select Time',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.timer_outlined,
                  color: Colors.white,
                  size: 20,
                )
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 6),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: index == 1
                            ? CustomColors.yellowColor.withOpacity(0.8)
                            : CustomColors.bgTextColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const SizedBox(height: 8),
                          Center(
                            child: Text(
                              '${index + 8}:30 AM',
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CustomColors.yellowColor,
                      ),
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      child: const Center(
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
