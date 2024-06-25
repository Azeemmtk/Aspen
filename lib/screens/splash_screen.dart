import 'package:flutter/material.dart';
import 'package:shoes/screens/onbord.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _splashState();
}

class _splashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onVerticalDragEnd: (details) {
        if (details.primaryVelocity! < 0) {
          // Swiped up
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Onbord()), // Replace with your next page
          );
        }
      },
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/splash.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 420,
            left: 110,
            child: Text(
              'OXY BOOTS',
              style: TextStyle(
                  fontFamily: 'Airbun',
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ));
  }
}
