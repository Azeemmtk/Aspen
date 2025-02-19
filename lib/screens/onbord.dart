import 'package:flutter/material.dart';
import 'package:shoes/screens/onbord1_3_screen.dart';
import 'package:shoes/screens/signin_screen.dart';

class Onbord extends StatefulWidget {
  const Onbord({super.key});

  @override
  State<Onbord> createState() => _Onbord1State();
}

class _Onbord1State extends State<Onbord> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  List<String> btnname = ['Next', 'Next', 'Get Started'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                Onbord13(
                  image: 'assets/images/shoe1.png',
                  title: 'Start Journey \nWith Nike',
                  sub: 'Smart, Gorgeous & Fashionable \nCollection',
                ),
                Onbord13(
                  title: 'Follow Latest \nStyle Shoes',
                  image: 'assets/images/shoe2.png',
                  sub:
                      'There Are Many Beautiful And \nAttractive Plants To Your Room',
                  roundimage: Image.asset('assets/images/shoe2sub.png'),
                ),
                Onbord13(
                  image: 'assets/images/shoe3.png',
                  title: 'Summer Shoes \nNike 2022',
                  sub: 'Amet Minim Lit Nodeseru Saku \nNandu sit Alique Dolor',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(3, (index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      width: _currentPage == index ? 40.0 : 10.0,
                      height: 5.0,
                      decoration: BoxDecoration(
                        color:
                            _currentPage == index ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_currentPage == 3 - 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signin(),
                            ));
                      } else {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: Text(
                      btnname[_currentPage],
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
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
