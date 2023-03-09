import 'package:flutter/material.dart';

class AddPillReminder extends StatefulWidget {
  const AddPillReminder({Key? key}) : super(key: key);

  @override
  State<AddPillReminder> createState() => _AddPillReminderState();
}

class _AddPillReminderState extends State<AddPillReminder> {
  var graphbut = 1;
  var graphbut1 = 1;
  var selectedtype = 0;
  var a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      profile(context),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
    Icon(Icons.arrow_back_sharp,color: Colors.black,),
    Text("DEC",style: TextStyle(fontSize: 15 ,color: Colors.black,fontWeight: FontWeight.bold),),
    Padding(
      padding: EdgeInsets.only(right: 10),
      child: Text("JAN",style: TextStyle(fontSize: 15 ,color: Colors.black,fontWeight: FontWeight.bold),))

      ],),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  setState(() {
                    print(graphbut);
                    graphbut = 1;
                    selectedtype = 0;
                  });
                },
                child: graphbut == 1
                    ? TimesDay("14\nMon", graphbut, Colors.cyan)
                    : TimesDay("14\nMon", graphbut, Colors.white)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.10,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    print(graphbut);

                    graphbut = 2;
                    selectedtype = 1;
                  });
                },
                child: graphbut == 2
                    ? TimesDay("15\nTue", graphbut, Colors.cyan)
                    : TimesDay("15\nTue", graphbut, Colors.white)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.10,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    print(graphbut);

                    graphbut = 3;
                    selectedtype = 2;
                  });
                },
                child: graphbut == 3
                    ? TimesDay("16\nThu", graphbut, Colors.cyan)
                    : TimesDay("16\nThu", graphbut, Colors.white)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.10,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    print(graphbut);

                    graphbut = 4;
                    selectedtype = 3;
                  });
                },
                child: graphbut == 4
                    ? TimesDay("17\nfri", graphbut, Colors.cyan)
                    : TimesDay("17\nfri", graphbut, Colors.white)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.10,
            ),
          
          ],
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.04,
      ),
       Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text("Ongoing",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
          ),
          Medicine(context,'Mobile App design','Annual kit'),
          //  Medicine(context),
           
    ]));
  }
}

class TimesDay extends StatelessWidget {
  final String? title;
  final int? state;
  final Color? col;
  TimesDay(this.title, this.state, this.col);
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;

    return Container(
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.height * 0.08,
      alignment: Alignment.center,
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
        color: col,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        title!.toUpperCase(),
        style: theme.bodyText2!.copyWith(color: Colors.black),
      ),
    );
  }
}

Future<TimeOfDay?> showTimePicker({
  required BuildContext context,
  required TimeOfDay initialTime,
  TransitionBuilder? builder,
  bool useRootNavigator = true,
  TimePickerEntryMode initialEntryMode = TimePickerEntryMode.dial,
  String? cancelText,
  String? confirmText,
  String? helpText,
  String? errorInvalidText,
  String? hourLabelText,
  String? minuteLabelText,
  RouteSettings? routeSettings,
  EntryModeChangeCallback? onEntryModeChanged,
  Offset? anchorPoint,
}) async {
  assert(context != null);
  assert(initialTime != null);
  assert(useRootNavigator != null);
  assert(initialEntryMode != null);
  assert(debugCheckHasMaterialLocalizations(context));

  final Widget dialog = TimePickerDialog(
    initialTime: initialTime,
    initialEntryMode: initialEntryMode,
    cancelText: cancelText,
    confirmText: confirmText,
    helpText: helpText,
    errorInvalidText: errorInvalidText,
    hourLabelText: hourLabelText,
    minuteLabelText: minuteLabelText,
    onEntryModeChanged: onEntryModeChanged,
  );
  return showDialog<TimeOfDay>(
    context: context,
    useRootNavigator: useRootNavigator,
    builder: (BuildContext context) {
      return builder == null ? dialog : builder(context, dialog);
    },
    routeSettings: routeSettings,
    anchorPoint: anchorPoint,
  );
}

Widget profile(context) {
  return Column(children: [
    Container(
        child: ListTile(
      leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          )),
      trailing: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child:
              CircleAvatar(child: ClipOval(child: Image.asset('assets/1.jpg'))),
        ),
      ),
    )),
  ]);
}
Widget Medicine(context,tite,subtile) {
  return 
      Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
            bottom: MediaQuery.of(context).size.height * 0.02,
            left: MediaQuery.of(context).size.height * 0.08,
            right: MediaQuery.of(context).size.height * 0.02,
          ),
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.02,
            top: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.height * 0.01,
            right: MediaQuery.of(context).size.height * 0.01,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
             
              boxShadow: [
                BoxShadow(
                 color:Color.fromARGB(255, 196, 83, 216),
                          offset: const Offset(
                         1,1
                          ),
                        
                        ), 
              ]
              
              ),
          child: Column(
              
            children: [
        
              Column( children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Column(children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 30)),
                      Text(
                        tite,
                        style: TextStyle(
                            fontSize: 21,
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
                      Text(subtile,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 12)),
                      ClipOval(
                          child: CircleAvatar(
                        backgroundImage: AssetImage("assets/1.jpg"),
                      )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
  Spacer(),
                    Text("9:00am - 10:00am",style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                   
                    ],
                  ),
                  
  
                ]
                ),
                
              ]
              ),
            ],
          
          
            
          ),
    
  );
}