import 'package:flutter/material.dart';

class Chips extends StatefulWidget {
  Chips(
      {super.key,
      required this.image,
      required this.name,
      this.isClicked = false});

  String image;
  String name;
  bool isClicked;

  @override
  State<Chips> createState() => _chipState();
}

class _chipState extends State<Chips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.isClicked
              ? Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 130,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: Color(0xFF5B9EE1)),
                    ),
                    Positioned(
                      top: 4,
                      left: 5,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 17,
                      child: Image.asset(widget.image),
                    ),
                    Positioned(
                      top: 14,
                      left: 56,
                      child: Text(
                        widget.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              : Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: 18,
                      left: 16,
                      child: Image.asset(widget.image),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
