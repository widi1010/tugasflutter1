import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListBuah extends StatelessWidget {
  Items item1 = new Items(img: "assets/1.png", title: 'Strawberry');
  Items item2 = new Items(img: "assets/2.png", title: 'Grapes');
  Items item3 = new Items(img: "assets/3.png", title: 'Apple');
  Items item5 = new Items(img: "assets/5.png", title: 'Avocado');
  Items item6 = new Items(img: "assets/6.png", title: 'Durian');
  Items item7 = new Items(img: "assets/7.png", title: 'Orange');
  Items item8 = new Items(img: "assets/8.png", title: 'Mango');
  Items item9 = new Items(img: "assets/9.png", title: 'Pineapple');
  Items item10 = new Items(img: "assets/10.png", title: 'Kiwi');
  Items item11 = new Items(img: "assets/11.png", title: 'Watermelon');
  Items item12 = new Items(img: "assets/12.png", title: 'Cherry');
  Items item13 = new Items(img: "assets/13.png", title: 'Banana');
  Items item14 = new Items(img: "assets/14.png", title: 'Rambutan');
  Items item15 = new Items(img: "assets/15.png", title: 'Papaya');
  Items item16 = new Items(img: "assets/16.png", title: 'Pear');
  Items item18 = new Items(img: "assets/18.png", title: 'Peach');

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [
      item1,
      item2,
      item3,
      item5,
      item6,
      item7,
      item8,
      item9,
      item10,
      item11,
      item12,
      item13,
      item14,
      item16,
      item18,
    ];
    var color = 0xffa18877;
    return Flexible(
      child: ListView(
          children: myList.map((data) {
        return GestureDetector(
          child: Container(
            decoration:
                BoxDecoration(color: Color(color), shape: BoxShape.rectangle),
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  data.img,
                  width: 200,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(data.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        );
      }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  Items({required this.title, required this.img});
}
