import 'package:flutter/material.dart';
import 'iconsgenerate.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // This stack contain two child one contains whole ui and other is used for guide icon
        children: <Widget>[
          Column(
            // this column contains two containers top and bottom
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Top container
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 2.6,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage('images/lond.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Color(0xaa000000),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //top icons
                    children: <Widget>[
                      SafeArea(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(80)),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Chatpage');
                              },
                              icon: Icon(
                                Icons.messenger_outline_rounded,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SafeArea(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(80)),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Settings');
                              },
                              icon: Icon(
                                Icons.menu_open,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //column for profile image
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3.4,
                      ),
                      Center(
                        child: Container(
                          width: 140.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/sample.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(80.0),
                            border: Border.all(
                              color: Colors.white,
                              width: 5.0,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Rashida",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Poppins"),
                      ),
                      Text(
                        "London",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "I am an enthusiastic traveller",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 4,
                            color: Color(0xffFefefe),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextButton(
                              onPressed: null,
                              child: Text(
                                "Plan a trip with companion",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),

              //bottom container
              SafeArea(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 11.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xfff0eded),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: <Widget>[
                              Iconsgenerate(
                                imagePath: "images/friends.png",
                                width: 50,
                                label: "Friends",
                                path: (){
                                  Navigator.pushNamed(context, "/Friends");
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Iconsgenerate(
                            imagePath: "images/companion.png",
                            width: 50,
                            label: "Companion",
                            path: (){
                              Navigator.pushNamed(context, "/Companion");
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

          // for guide icon
          Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.15,
              ),
              Center(
                child: Iconsgenerate(
                  width: 80,
                  label: "Guide",
                  path: (){
                    Navigator.pushNamed(context, "/Guide");
                  },
                  imagePath: "images/guide.png",
                  borderWidth: 4.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
