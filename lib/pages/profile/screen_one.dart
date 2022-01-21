import 'package:doctor_profile/components/card.dart';
import 'package:doctor_profile/pages/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:doctor_profile/constants.dart';


class ScreenOne extends StatefulWidget {

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

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
                Row(
                  children: [
                    Column(
                      children: [
                        kCircleAvatar,
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                color: Colors.white38,
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Jessica',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nex',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoadingPage.id);
                      },
                      icon: Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    const Text(
                      'Upcoming consultations',
                      style: kHeadingTextStyle,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: kHeadingIcon,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CardView(),
                      SizedBox(width: 20,),
                      CardView(),
                      SizedBox(width: 20,),
                      CardView(),
                      SizedBox(width: 20,),
                      CardView(),
                      SizedBox(width: 20,),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    const Text(
                      'Patient profiles',
                      style: kHeadingTextStyle,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: kHeadingIcon,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        child: FittedBox(
                          child: ElevatedButton(
                            //Go to Login page
                            onPressed: () {},
                            child:
                            Icon(Icons.add, color: Colors.white),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(20),
                              primary: Color(0xFF2CD1A4),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      kCircleAvatar,
                      SizedBox(width: 20,),
                      kCircleAvatar,
                      SizedBox(width: 20,),
                      kCircleAvatar,
                      SizedBox(width: 20,),
                      kCircleAvatar,
                      SizedBox(width: 20,),
                      kCircleAvatar,
                      SizedBox(width: 20,),
                      kCircleAvatar,
                      SizedBox(width: 20,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }



}