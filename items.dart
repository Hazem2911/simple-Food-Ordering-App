import 'package:app/home2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class items extends StatefulWidget {
  const items({super.key});

  @override
  State<items> createState() => _itemsState();
}

String s = 'Add to cart';
Color c = Color(0xfffa4a0c);

class _itemsState extends State<items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              left: 41,
              right: 38.43,
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                Spacer(),
                Image.asset(
                  'assets/images/Vector.png',
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Image.asset(
              'assets/images/salmon.png',
              width: 241.21,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      color: Color(0xfffa4a0c),
                      borderRadius: BorderRadius.circular(100)),
                ),
                SizedBox(
                  width: 13,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      color: Color(0xffb7b7b7),
                      borderRadius: BorderRadius.circular(100)),
                ),
                SizedBox(
                  width: 13,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      color: Color(0xffb7b7b7),
                      borderRadius: BorderRadius.circular(100)),
                ),
                SizedBox(
                  width: 13,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      color: Color(0xffb7b7b7),
                      borderRadius: BorderRadius.circular(100)),
                ),
                SizedBox(
                  width: 13,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'Spicy salmon',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Colors.black),
                ),
                Text(
                  'Rs. 199',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Color(0xffff470b)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 41, right: 53),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  'A sizzling taste of the Salmon with crunchiness of freshly baked\nveggeis and garnished with cherry tomatoes and basil oil',
                  style: TextStyle(
                      fontSize: 12, height: 1.5, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Text(
                  "Delivery",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  'Delivered within 30mins from your location* if placed now. Coupon Available.',
                  style: TextStyle(fontSize: 14, height: 1.5),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Text(
                      "Reviews ",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Text(
                      "4.4/5",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xffff470b)),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      " see all reviews",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff9a9a9d)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                InkWell(
                  onTap: () {
                   setState(() {
                      s = 'Added';
                      c = const Color(0xff12ab3d);
                    });
                  },
                  child: Container(
                    width: 314,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30), color: c),
                    child: Center(
                      child: Text(
                        s,
                        style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
