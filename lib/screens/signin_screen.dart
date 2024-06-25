import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes/screens/paswordrecover_screen.dart';
import 'package:shoes/screens/signup_screen.dart';
import 'package:shoes/widget/customtextfield.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height / 6.11,
              ),
              const Center(
                child: Text(
                  'Hello Again!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const Center(
                child: Text(
                  'Welcome Back You’ve Been Missed!',
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
              const Text(
                'Password',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Customtextfield(
                hint: 'sdfs',
                visibility: true,
                suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.eye_slash)),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Passrecover(),
                          ));
                    },
                    child: Text(
                      'Recovery password',
                      style: TextStyle(color: Color(0xFF707B81)),
                    ),
                  )),
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
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/images/google.png')),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Sign in with google',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dont Have An Account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signup(),
                            ));
                      },
                      child: const Text(
                        'Sign up for free',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
