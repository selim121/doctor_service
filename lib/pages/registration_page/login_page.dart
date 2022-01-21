import 'package:doctor_profile/components/paint_page.dart';
import 'package:doctor_profile/pages/profile/home_page.dart';
import 'package:doctor_profile/pages/registration_page/registration.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;

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
                SizedBox(height: 40,),
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
                      'Hello,',
                      style: TextStyle(
                        fontFamily: 'Nexa',
                        color: Color(0xFF2CD1A4),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: const [
                    Text(
                      'Login now.',
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
                  height: 30,
                ),
                Row(
                  children: const [
                    Text(
                      'Welcome back. Please fill in the form',
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
                      'to sign in and continue.',
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
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email...',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    labelText: 'E-mail Address',
                    labelStyle: TextStyle(
                        color: Color(0xFF2CD1A4),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nex'),
                  ),
                  onSaved: (_) {},
                  validator: (String? value) {
                    String pattern =
                        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                        r"{0,253}[a-zA-Z0-9])?)*$";
                    RegExp regex = RegExp(pattern);
                    if (value == null ||
                        value.isEmpty ||
                        !regex.hasMatch(value)) {
                      return 'Enter a valid email address';
                    } else {
                      return null;
                    }
                  },
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Nex'
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Color(0xFF2CD1A4),
                      fontFamily: 'Nex',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    hintText: 'Enter your password...',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Nex'
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF2CD1A4)),
                        alignment: Alignment.center,
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                  ),
                ),

                SizedBox(height: 30,),

                Row(
                  children: [
                    SizedBox(width: 50,),
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    TextButton(
                      child: const Text('Register now',
                        style: TextStyle(
                          fontFamily: 'Robot',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF2CD1A4),
                        ),
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, RegistrationPage.id);
                      },
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
