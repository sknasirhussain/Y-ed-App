// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:y_ed_app/screens/home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 100,
              left: 100,
              child: Container(
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color(0xff025c50),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.278 - 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
              ),
              child: Center(
                child: Image.asset(
                  "assets/Y-ed_Logo.png",
                  scale: 0.2,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.6 + 60,
                decoration: BoxDecoration(
                  color: Color(0xff025c50),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Learn Today Sustain Tomorrow!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          wordSpacing: 2,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 9, 63, 56)),
                        elevation: MaterialStateProperty.all(5),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              width: 1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder:(context) => HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          letterSpacing: 1,
                          wordSpacing: 1,
                          color: Colors.white,
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
