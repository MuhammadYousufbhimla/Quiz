
import 'package:flutter/material.dart';
import 'package:quiz/view/task1.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(children: [
      Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Color.fromARGB(255, 231, 181, 177),
              
              ],
              )
            ),
          ),
          // Padding(
          //     padding: EdgeInsets.only(
          //         top: MediaQuery.of(context).size.height * 0.05,
          //         left: MediaQuery.of(context).size.width * 0.43),
          //     child: Image.asset(
          //       'assets/splash.png',
          //       width: MediaQuery.of(context).size.width * 0.18,
          //     )),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.52,
                left: MediaQuery.of(context).size.width * 0),
            child: Container(
              
              height: MediaQuery.of(context).size.height*0.82,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white)
              ),
              child: Row(
                children: [
                  // Text(
                  //   "NO",
                  //   style: TextStyle(
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  // Padding(
                  //     padding: EdgeInsets.only(
                  //         left: MediaQuery.of(context).size.width * 0.05)),
                  // Text(
                  //   "1",
                  //   style: TextStyle(
                  //       fontSize: 45,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.white),
                  // ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.58,
                left: MediaQuery.of(context).size.width * 0.22),
            child: Text("Manage Your \n Daily Tasks",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.75,
                left: MediaQuery.of(context).size.width * 0.20),
            child: Text("WORK IN BIG IDEAS,WITHOUT THE ",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.79,
                left: MediaQuery.of(context).size.width * 0.40),
            child: Text(
                "BUSYWORK",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                )),
          ),
        Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.85,
        left:MediaQuery.of(context).size.height * 0.20,
        ),
        child: ElevatedButton(
  onPressed: () {},
  child: Icon(Icons.arrow_back),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.pinkAccent,
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(12)
    ),
  ),
),
        ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.90,
                ),
            child: Container(
              
              
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: MediaQuery.of(context).size.width * 0.01,
                      color: Colors.white)),
              child: TextButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>task1()));
              }, child: Text("SKIP",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 24, 130, 216)),))
            ),
          )
        ],
      ),
        task1(),
     
     
  
    
    ]));
  }
}
