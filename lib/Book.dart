import 'package:flutter/material.dart';

class Letter_book extends StatefulWidget {
  const Letter_book({Key? key}) : super(key: key);

  @override
  _Letter_bookState createState() => _Letter_bookState();
}

class _Letter_bookState extends State<Letter_book> {
  var leter = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z",
  ];
  var imagelist = [
    'images/Apple.jpg',
    'images/Ball.jpg',
    'images/Cat.jpg',
    'images/Doll.jpg',
    'images/Egg.jpg',
    'images/Fish.jpg',
    'images/Goat.jpg',
    'images/Horse.jpg',
    'images/Icecream.jpg',
    'images/Jug.jpg',
    'images/Kite.jpg',
    'images/Lion.jpg',
    'images/Mango.jpg',
    'images/Nest.jpg',
    'images/Orange.jpg',
    'images/Pencil.jpg',
    'images/Queen.jpg',
    'images/Rose.jpg',
    'images/Ship.jpg',
    'images/Tree.jpg',
    'images/Umbrella.jpg',
    'images/Van.jpg',
    'images/Watermelon.jpg',
    'images/X-ray.jpg',
    'images/Yak.jpg',
    'images/Zebra.jpg',

  ];
  var name = [
    'Apple',
    'Ball',
    'Cat',
    "Doll",
    "Egg",
    "Fish",
    "Goat",
    "Horse",
    "Icecream",
    "Jug",
    "Kite",
    "Lion",
    "Mango",
    "Nest",
    "Orange",
    "Pencil",
    "Queen",
    "Rose",
    "Ship",
    "Tree",
    "Umbrella",
    "Van",
    "Watermelon",
    "X-ray",
    "Yak",
    "Zebra",
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Alphabet Learning')),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'images/bg.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  leter[index],
                  style: TextStyle(
                      fontSize: 72,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          if (index != 0) index--;
                          setState(() {});
                        },
                        child: Icon(Icons.arrow_back_ios)),
                    Container(
                        height: 250,
                        width: 300,
                        child: Image.asset(imagelist[index])),
                    InkWell(
                        onTap: () {
                          if (index != 25) index++;
                          setState(() {});
                        },
                        child: Icon(Icons.arrow_forward_ios_rounded)),
                  ],
                ),
                Text(
                  name[index],
                  style: TextStyle(
                      fontSize: 72,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
