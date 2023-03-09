import 'package:flutter/material.dart';
import 'package:quiz/view/task2.dart';

import 'crausel.dart';

class task1 extends StatefulWidget {
  const task1({super.key});

  @override
  State<task1> createState() => _task1State();
}

class _task1State extends State<task1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
      child: ListView(
        children: [
       profile(context),
       SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          crauselSilder1(),
      
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text("Risent files",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
          ),
          InkWell
          (
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPillReminder()));
            },
            child: files(context, "PDF","Brief for project Tutorium",'Shared by judail')),
              files(context, "CSV","Brief for project Tutorium",'Shared by Stew'),
                 files(context, "PPT  ","Brief for project Tutorium",'Shared by Stew'),
                  files(context, "CSV","Brief for project Tutorium",'Shared by Stew'),
             
        ],
      ),
     ),
       
      
    
      
   
      
    );
  }

Widget files(context, file,title,subtile) {
  return Container(
    
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.03,
      bottom: MediaQuery.of(context).size.height * 0.01,
      left: MediaQuery.of(context).size.height * 0.01,
      right: MediaQuery.of(context).size.height * 0.01,
    ),
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.015,
      left: MediaQuery.of(context).size.height * 0.01,
      right: MediaQuery.of(context).size.height * 0.01,
      bottom: MediaQuery.of(context).size.height * 0.01,
    ),
    decoration: BoxDecoration(
      
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: ListTile(
        leading:Container(
          height: 80,
          width: 50,
         decoration: new BoxDecoration(
      color: Colors.cyan,
      borderRadius: BorderRadius.only(
          topRight: Radius.elliptical(
              MediaQuery.of(context).size.width, 100.0)),
    ),
          alignment: Alignment.center,
     
          child: Text(file,style: TextStyle(color: Colors.white),),
        ),
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 05,),
            Text(
              subtile,
              style:
                  TextStyle(color:  Colors.grey, fontWeight: FontWeight.w500,fontSize: 15),
            ),
           
          ],
        ),
     
        )
  );
}
Widget profile(context) {
    return Column(
      children: [
        Container(
            child: ListTile(
          leading: GestureDetector(
            onTap: () {
             
            },
            child: CircleAvatar(
                child: ClipOval(child: Icon(Icons.menu,color: Colors.white,))),
          ),
         
          trailing: InkWell(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => test_indicators()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 19.0),
              child: Icon(
                Icons.notification_add_rounded,
                color:Colors.black,
              ),
            ),
          ),
        )),
        
      ]  
    );
  }
}