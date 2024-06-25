import 'package:flutter/material.dart';
import 'package:shoes/widget/chip.dart';
import 'package:shoes/widget/customtextfield.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map> imglist = [
    {'img': "assets/images/nike.png", 'text': 'Nike'},
    {'img': "assets/images/puma.png", 'text': "Puma"},
    {'img': "assets/images/adidas.png", 'text': "Adidas"},
    {'img': "assets/images/under.png", "text": "Under"},
    {'img': "assets/images/converse.png", 'text': 'Converse'}
  ];
  int selectedIndux = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8F9FA),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                color: Colors.white,
              ),
              child: Image.asset('assets/images/4dot.png'),
            ),
            const Column(
              children: [
                Text(
                  'Store location',
                  style: TextStyle(color: Color(0xFF707B81), fontSize: 15),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: Color(0xFFF87265),
                    ),
                    Text('Mondolibug, Sylhet')
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    color: Colors.white,
                  ),
                ),
                const Positioned(
                  top: 8,
                  left: 8,
                  child: Icon(Icons.notifications),
                ),
                Positioned(
                  right: 0,
                  child: Image.asset('assets/images/reddot.png'),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Customtextfield(
            visibility: false,
            prefix: const Icon(Icons.search),
            hint: 'Looking for Shoes',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imglist.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    selectedIndux = index;
                    setState(() {});
                  },
                  child: Chips(
                      isClicked: selectedIndux == index,
                      image: imglist[index]['img'],
                      name: imglist[index]['text']),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Pupular shoes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TextButton(onPressed: () {}, child: const Text('See all'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 180,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 220,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
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
