import 'package:doctor_profile/components/paint_page.dart';
import 'package:doctor_profile/pages/registration_page/login_page.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  static const String id = 'loading_page';

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF07203C),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: CustomPaint(
                    painter: MidCircle(),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: CustomPaint(
                    painter: MinCircle(),
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      'Virtual',
                      style: TextStyle(
                        fontFamily: 'Nexa',
                        color: Color(0xFF2CD1A4),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Ecosystem.',
                      style: TextStyle(
                        fontFamily: 'Nexa',
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Text(
                      'Specialised healthcare, on a signle tech platform,',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'simplifying access for anyone, anywhere.',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CustomPaint(
                  painter: MaxCircle(),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/doctor1.jpeg'),
                            ),
                          ),
                          height: 300,
                          width: 160,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/doctor2.jpeg'),
                            ),
                          ),
                          height: 300,
                          width: 160,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: FittedBox(
                        child: ElevatedButton(
                          //Go to Login page
                          onPressed: () {
                            Navigator.pushNamed(context, LoginPage.id);
                          },
                          child:
                              Icon(Icons.arrow_forward, color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20),
                            primary: Color(0xFF2CD1A4),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get',
                          style: TextStyle(
                              fontFamily: 'Nexa',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'started',
                          style: TextStyle(
                              fontFamily: 'Nexa',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
