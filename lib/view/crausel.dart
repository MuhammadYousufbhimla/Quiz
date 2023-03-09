import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class crauselSilder1 extends StatefulWidget {
  const crauselSilder1({Key? key}) : super(key: key);

  @override
  State<crauselSilder1> createState() => _crauselSilder1State();
}

class _crauselSilder1State extends State<crauselSilder1> {
  @override
  Widget build(BuildContext context) {
    return Container(child: crauselSilder2(context, 'Start'));
  }
}

Widget crauselSilder2(context, days) {
  return Container(
    child: CarouselSlider(
      items: [
        Medicine(context),
      ],
      options: CarouselOptions(
        height: 265.0,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    ),
  );
}

// Medicine Slider
Widget Medicine(context) {
  return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.03,
        left: MediaQuery.of(context).size.height * 0.003,
        right: MediaQuery.of(context).size.height * 0.003,
      ),
      padding: EdgeInsets.only(
        // bottom: MediaQuery.of(context).size.height * 0.02,
        top: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.height * 0.01,
        right: MediaQuery.of(context).size.height * 0.01,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 168, 100, 180),
              Color.fromARGB(255, 218, 122, 154),
              Color.fromARGB(255, 123, 117, 212),
              
            ],
            
          ),
          boxShadow: [
            BoxShadow(
             color:Color.fromARGB(255, 196, 83, 216),
                      offset: const Offset(
                     1,1
                      ),
                      blurRadius: 2,
                      spreadRadius:2,
                    ), 
          ]
          
          ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.09,
        ),
        Column(children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 30)),
              Text(
                "Skillaley",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 30)),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text("Ui design kit ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              ClipOval(
                  child: CircleAvatar(
                backgroundImage: AssetImage("assets/1.jpg"),
              )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),

              Slider(value: 1, onChanged: (value) {
                
              }),
           
            ],
          ),
          

        ]
        ),
        
      ]
      )
      
        
      );
}

Widget slidercontainer1(context, totaltasks, completedtasks, values) {
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.01,
      bottom: MediaQuery.of(context).size.height * 0.02,
      left: MediaQuery.of(context).size.height * 0.003,
      right: MediaQuery.of(context).size.height * 0.003,
    ),
    padding: EdgeInsets.only(
      // bottom: MediaQuery.of(context).size.height * 0.02,
      top: MediaQuery.of(context).size.height * 0.01,
      left: MediaQuery.of(context).size.height * 0.01,
      right: MediaQuery.of(context).size.height * 0.01,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      // gradient: LinearGradient(colors: [
      //   Color.fromARGB(255, 68, 184, 238),
      //   Colors.white,
      //   Color.fromARGB(255, 68, 184, 238),
      //   Colors.white
      // ]),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(12.0),
        topLeft: Radius.circular(12),
        bottomRight: Radius.circular(12.0),
        topRight: Radius.circular(70.0),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 0),
                child: Column(
                  children: [
                    Text("  Total Tasks",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.green,
                            letterSpacing: 1)),
                    Text(
                      "10",
                      style: TextStyle(fontSize: 15, letterSpacing: 2),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.002)),
                    Text(
                      "   Completed",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                          letterSpacing: 1),
                    ),
                    Text(
                      "05",
                      style: TextStyle(fontSize: 15, letterSpacing: 2),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.002,
                // top: MediaQuery.of(context).size.height * 0.001,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.height * 0.03,
                      // left: MediaQuery.of(context).size.height * 0.001,
                    ),
                    width: MediaQuery.of(context).size.width * 0.230,
                    height: MediaQuery.of(context).size.height * 0.115,
                    child: Text("circular"),
                    // //  CircularPercentIndicator(
                    // //   backgroundColor: Colors.orange,
                    // //   progressColor: Colors.blue,
                    // //   fillColor: Colors.transparent,
                    // //   radius: 42.0,
                    // //   lineWidth: 10.0,
                    // //   animation: true,
                    // //   percent: 0.7,
                    // //   center: new Text(
                    // //     "70.0%",
                    // //     style: new TextStyle(
                    // //         fontWeight: FontWeight.bold, fontSize: 20.0),
                    // //   ),
                    // )),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.04)),
        Divider(
          color: Colors.green,
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                'assets/trophy.png',
                width: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10),
              child: Image.asset(
                'assets/badge.png',
                width: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 12),
              child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 16,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ],
    ),
  );
}
