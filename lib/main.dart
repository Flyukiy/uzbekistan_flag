import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'half_moon.dart';
import 'single_star.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 90),
                      HalfMoon(),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 80),
                              SingleStar(),
                              SingleStar(),
                              SingleStar(),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 40),
                              SingleStar(),
                              SingleStar(),
                              SingleStar(),
                              SingleStar(),
                            ],
                          ),
                          Row(
                            children: [
                              SingleStar(),
                              SingleStar(),
                              SingleStar(),
                              SingleStar(),
                              SingleStar(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CustomPaint(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(color: Colors.red, width: 4),
                      bottom: BorderSide(color: Colors.red, width: 4),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.green[400],
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      ' Flyuk ',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.pinyonScript(
                        fontSize: 30,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
