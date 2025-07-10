import 'package:flutter/material.dart';
import 'package:preply_clone/widgets/animatedkutu.dart';
import 'package:preply_clone/widgets/kisicardlar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(   // Scaffold kaldırıldı
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 60),
                  child: Text(
                    "Good afternoon, Beyza",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(right: 100),
                width: 300,
                child: Image.asset("images/goodmorning.png")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(255, 245, 195, 1),
                ),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: SizedBox(
                            height: 30, child: Image.asset("images/dikkat.png")),
                      ),
                    ),
                    Flexible(
                        child: Container(
                            child: Padding(
                      padding: const EdgeInsets.only(bottom: 14, left: 10),
                      child: Text(
                          "Your profile requires editing. Find helpful information in your email or in messages            we've sent you."),
                    )))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(244, 243, 247, 1),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                "Tackle pending actions",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Check other actions available to you",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "View action",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(255, 122, 172, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  side: BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 250,
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Image.asset(
                                "images/takvim.png",
                                width: 100,
                                height: 120,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Next lessons",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: "Inter",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Kisicardlar(
                name: "Fatih K.",
                date: "Tomorrow, Jul 2, 20:00-20:25",
                imgUrl: "images/fatih.png"),
            Kisicardlar(
                name: "İrem B.",
                date: "Tomorrow, Jul 2, 20:30-21:20",
                imgUrl: "images/irem.png"),
            Kisicardlar(
                name: "İlay C.",
                date: "Tomorrow, Jul 2, 21:30-22:20",
                imgUrl: "images/kisi.png"),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "Top actions",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Animatedkutu(
                olayAdi: "Reply to potantial students",
                subText:
                    "Check in later for potential students to connect with."),
            Animatedkutu(
                olayAdi: "Help trial students get started",
                subText:
                    "Check in later for potential students to connect with."),
            Animatedkutu(
                olayAdi: "Engage active students",
                subText: "Check in later for active students to connect with."),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "Recommended",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 300,
                        height: 380,
                        child: Card(
                          elevation: 2,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.grey, width: 1)),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(244, 243, 247, 1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Icon(Icons.card_travel_outlined),
                                    ),
                                    Icon(Icons.close)
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Teaching working professionals course",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Skills to enhance your workplace-focused lessons to better teach and retain professionals.",
                                  style: TextStyle(fontSize: 16, color: Colors.black),
                                ),
                                SizedBox(height: 50),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          side: BorderSide(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "Take course",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 300,
                        height: 380,
                        child: Card(
                          elevation: 2,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.grey, width: 1)),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(244, 243, 247, 1),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 35,
                                      ),
                                    ),
                                    Icon(Icons.close)
                                  ],
                                ),
                                SizedBox(height: 8),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Get a Preply certificate ",
                                    style: TextStyle(
                                        fontFamily: "Inter",
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Earn up to 70% more and stand out by completing the free Preply language teaching course -whether you're new to teaching or experienced.",
                                  style: TextStyle(fontSize: 16, color: Colors.black),
                                ),
                                SizedBox(height: 55),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          side: BorderSide(
                                            color: Colors.black,
                                            width: 2,
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "Start course",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
