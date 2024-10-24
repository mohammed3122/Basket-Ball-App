import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBall());
}

class BasketBall extends StatefulWidget {
  const BasketBall({super.key});

  @override
  State<BasketBall> createState() => _BasketBallState();
}

class _BasketBallState extends State<BasketBall> {
  int points1 = 0;
  int points2 = 0;
  final win = 30;
  Color? colorwin;
  Color? colorTem1;
  Color? colorTem2;
  Color? colorPoints1;
  Color? colorPoints2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Counter Points'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 260,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Winner = 30 Points',
                  style: TextStyle(
                    fontSize: 30,
                    color: colorwin,
                  ),
                ),
              ),
            ),
            SizedBox(
             
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Team 1',
                        style: TextStyle(
                          fontSize: 40,
                          color: colorTem1,
                        ),
                      ),
                      Text(
                        '$points1',
                        style: TextStyle(
                          fontSize: 130,
                          color: colorPoints1,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          if (points1 != win && points2 != 30) {
                            setState(() {
                              points1++;

                              if (points1 == win) {
                                colorwin = Colors.green;
                                colorTem1 = Colors.green;
                                colorPoints1 = Colors.green;
                              } else {
                                colorwin = Colors.black;
                              }
                            });
                          } else {
                            points1 = 30;
                          }
                        },
                        child: const Text(
                          '1 Point',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          if (points1 != win && points2 != 30) {
                            setState(() {
                              points1 += 2;

                              if (points1 == win) {
                                colorwin = Colors.green;
                                colorTem1 = Colors.green;
                                colorPoints1 = Colors.green;
                              } else {
                                colorwin = Colors.black;
                              }
                            });
                          } else {
                            points1 = 30;
                          }
                        },
                        child: const Text(
                          '2 Point',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          if (points1 != win && points2 != 30) {
                            setState(() {
                              points1 += 3;

                              if (points1 == win) {
                                colorwin = Colors.green;
                                colorTem1 = Colors.green;
                                colorPoints1 = Colors.green;
                              } else {
                                colorwin = Colors.black;
                              }
                            });
                          } else {
                            points1 = 30;
                          }
                        },
                        child: const Text(
                          '3 Point',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 410,
                    child: VerticalDivider(
                      color: Colors.orange,
                      thickness: 1.5,
                      indent: 10,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Team 2',
                        style: TextStyle(
                          fontSize: 40,
                          color: colorTem2,
                        ),
                      ),
                      Text(
                        '$points2',
                        style: TextStyle(
                          fontSize: 130,
                          color: colorPoints2,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          if (points2 != win && points1 != 30) {
                            setState(() {
                              points2++;

                              if (points2 == win) {
                                colorwin = Colors.green;
                                colorTem2 = Colors.green;
                                colorPoints2 = Colors.green;
                              } else {
                                colorwin = Colors.black;
                              }
                            });
                          } else {
                            points2 = 30;
                          }
                        },
                        child: const Text(
                          '1 Point',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          if (points2 != win && points1 != 30) {
                            setState(() {
                              points2 += 2;

                              if (points2 == win) {
                                colorwin = Colors.green;
                                colorTem2 = Colors.green;
                                colorPoints2 = Colors.green;
                              } else {
                                colorwin = Colors.black;
                              }
                            });
                          } else {
                            points2 = 30;
                          }
                        },
                        child: const Text(
                          '2 Point',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          if (points2 != win && points1 != 30) {
                            setState(() {
                              points2 += 3;

                              if (points2 == win) {
                                colorwin = Colors.green;
                                colorTem2 = Colors.green;
                                colorPoints2 = Colors.green;
                              } else {
                                colorwin = Colors.black;
                              }
                            });
                          } else {
                            points2 = 30;
                          }
                        },
                        child: const Text(
                          '3 Point',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.orange,
              ),
              onPressed: () {
                setState(() {
                  points1 = 0;
                  points2 = 0;
                  colorwin = Colors.black;
                  colorTem1 = Colors.black;
                  colorTem2 = Colors.black;
                  colorPoints1 = Colors.black;
                  colorPoints2 = Colors.black;
                });
              },
              child: const Text(
                'Recet',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
