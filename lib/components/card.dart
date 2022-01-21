import 'package:flutter/material.dart';
import 'package:doctor_profile/constants.dart';


  class CardView extends StatefulWidget {

    @override
    _CardViewState createState() => _CardViewState();
  }

  class _CardViewState extends State<CardView> {
    bool _activeButton = false;
    bool _activeCard = false;


    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: (){
          setState(() {
            //_activeCard = !_activeCard;
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 180,
            height: 200,
            color: _activeCard ? kActiveCardColour : kInactiveCardColour,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 20,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset('images/doctor3.jpeg'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 45,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: const [
                              Text(
                                '5:45PM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Nex',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                'Dec 7',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Nex',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Michael',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nex',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'Simpson',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nex',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    height: 30,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _activeButton = !_activeButton;
                          _activeCard = !_activeCard;
                        });
                      },
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Join the call',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(_activeButton ? kActiveButton : kInactiveButton),
                          alignment: Alignment.center,
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }

