import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ninja_card/cities.dart';
import 'package:ninja_card/cities2.dart';
import 'package:ninja_card/city_shared_preferance.dart';
import 'package:ninja_card/home.dart';



class SplashScreen extends StatefulWidget {



  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? selectedCity ;

  @override
  void initState(){
    super.initState();
    selectedCity = (CitySharedPreferance().getCity())?? "Arendal";
  }

  @override
  Widget build(BuildContext context) {
    print("prefs: ${selectedCity}");
    Timer(
      Duration(seconds: 5),
          () =>
              Navigator.pushReplacementNamed(context, "/home", arguments: {
                "value": selectedCity,

              }),

    );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Image.asset(
            'assets/kaba5.png',
            fit: BoxFit.contain,
            height: 100,
          ),

          SizedBox(
            height: 50,
          ),


          Container(

            child: Center(
              child: Text(
                "الفاتحه لروح المرحوم",
                style: TextStyle(
                  fontSize: 24.0,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ),
          ),

          Container(

            child: Center(
              child: Text(
                " هاني عيسى تميم",
                style: TextStyle(
                  fontSize: 24.0,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ),
          ),


          SizedBox(
            height: 30,
          ),

          Container(

            child: Center(
              child: Text(
                "Al-Fatiha til sjelen til den avdøde",
                style: TextStyle(
                  fontSize: 16.0,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 30,
          ),


          Container(

            child: Center(
              child: Text(
                " Hani Issa Tamim",
                style: TextStyle(
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
