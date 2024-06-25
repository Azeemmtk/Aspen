import 'package:flutter/material.dart';
import 'package:shoes/widget/customtextfield.dart';

class Passrecover extends StatefulWidget {
  const Passrecover({super.key});

  @override
  State<Passrecover> createState() => _SigninState();
}

class _SigninState extends State<Passrecover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 140,
              ),
              const Center(
                child: Text(
                  'Recovery Password',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const Center(
                child: Text(
                  'Please Enter Your Email Address To \n       Recieve a Verification Code',
                  style: TextStyle(color: Color(0xFF707B81)),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Email Address',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Customtextfield(
                  hint: 'alissonbecker@gmail.com', visibility: false),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5B9EE1)),
                    onPressed: () {},
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 140,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
