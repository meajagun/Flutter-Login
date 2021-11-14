import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/utilities/constants.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget _buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white, width: 1)
          ),
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter your Email',
              hintStyle: hintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white, width: 1)
          ),
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Enter your Password',
              hintStyle: hintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPassword() {
    return Container(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: () {
          print('Forgot Password Button Pressed');
        },
        child: Text(
          'Forgot Password?',
          style: labelStyle,
        ),
      ),
    );
  }

  Widget _buildSignin() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: 150,
      child: ElevatedButton(
        //elevation: 5.0,
        onPressed: () {
          print('Login Button Pressed');
        },
        style: ElevatedButton.styleFrom(
          onPrimary: HexColor('#2AB6F6'),
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),),
        ),
        child: Text(
          'Sign In',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildSignup() {
    return GestureDetector(
      onTap: () => print('Sign Up Button Pressed'),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('083B62'), //#083B62
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 100.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               CircleAvatar(
                  backgroundColor: HexColor('#2AB6F6'),
                  radius: 50,
                  backgroundImage: AssetImage('assets/logos/telegram_icon.png'),
                ),
                _buildEmail(),
                SizedBox(height: 15.0),
                _buildPassword(),
                _buildForgotPassword(),
                SizedBox(height: 15.0),
                _buildSignin(),
                _buildSignup(),
              ],
            ),
          ),
        )
      ],),
    );
  }
}