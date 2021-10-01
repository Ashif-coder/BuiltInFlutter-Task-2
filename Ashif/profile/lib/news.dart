import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:profile/news_card.dart';
import 'news_section.dart';
import 'trends.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  const Text(
                    "HashShorts",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  const Icon(
                    Icons.search,
                    size: 30,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Trends",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Trends(
                          hashTag: "#COVID19",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Trends(
                          hashTag: "#IPL2020",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Trends(
                          hashTag: "#Coronavaccine",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Trends(
                          hashTag: "#Technology",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Trends(
                          hashTag: "#Neet",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Trends(
                          hashTag: "#Bills",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        NewsSection(
                          section: "Sports",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        NewsSection(
                          section: "Politics",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        NewsSection(
                          section: "Cinema",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        NewsSection(
                          section: "IT",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        NewsSection(
                          section: "Corona",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                // width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: [
                    NewsCard(
                      title: "Is Nuclear Energy Safe!! UAE Step forward",
                      path: 'images/news1.jpg',
                    ),
                    const SizedBox(height: 40,),
                    NewsCard(
                      title: "Corana virus spread, Will there be there Another wave!!",
                      path: 'images/news2.jpg',
                    ),
                    const SizedBox(height: 40,),
                    NewsCard(
                      title: "Technology version 4.0, Are you ready!! ",
                      path: 'images/news3.jpg',
                    ),
                    const SizedBox(height: 40,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 60,
        color: Color(0xffe1e2e3),
        backgroundColor: Colors.white,
        items: const <Widget>[
          Icon(Icons.list, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
          print(index);
        },
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
      ),
    );
  }
}

