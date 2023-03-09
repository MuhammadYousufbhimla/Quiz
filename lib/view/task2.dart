import 'package:flutter/material.dart';


class AddPillReminder extends StatefulWidget {
  const AddPillReminder({Key? key}) : super(key: key);

  @override
  State<AddPillReminder> createState() => _AddPillReminderState();
}

class _AddPillReminderState extends State<AddPillReminder> {
  int itemcounter = 0;
  var graphbut = 1;
  var graphbut1 = 1;
  var selectedtype = 0;
  var a = 0;
  TimeOfDay initialTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: ListView(children: [
            profile(context),
         
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
       
             
               Column(children: [
                  Container(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01,
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.height * 0.001,
                        right: MediaQuery.of(context).size.height * 0.001,
                      ),
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.001,
                        bottom: MediaQuery.of(context).size.height * 0.001,
                        left: MediaQuery.of(context).size.height * 0.02,
                        right: MediaQuery.of(context).size.height * 0.02,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.2),
                            spreadRadius: 0.1,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Times a day",
                            style: TextStyle(
                              fontSize: 17,
                              // letterSpacing: 1,
                              // wordSpacing: 0.1,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.10,
                              ),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      print(graphbut);
                                      graphbut = 1;
                                      selectedtype = 0;
                                    });
                                  },
                                  child: graphbut == 1
                                      ? TimesDay("1", graphbut,
                                          Color.fromARGB(255, 2, 107, 6))
                                      : TimesDay("1", graphbut, Colors.blue)),
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
                                      ? TimesDay("2", graphbut,
                                          Color.fromARGB(255, 2, 107, 6))
                                      : TimesDay("2", graphbut, Colors.blue)),
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
                                      ? TimesDay("3", graphbut,
                                          Color.fromARGB(255, 2, 107, 6))
                                      : TimesDay("3", graphbut, Colors.blue)),
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
                                      ? TimesDay("4", graphbut,
                                          Color.fromARGB(255, 2, 107, 6))
                                      : TimesDay("4", graphbut, Colors.blue)),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.10,
                              ),
                            ],
                          )
                        ],
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                
         ] )]
                    
       
        ));
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
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
     decoration: new BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topRight: Radius.elliptical(
              MediaQuery.of(context).size.width, 100.0)),
    ),
      child: Text(
        title!.toUpperCase(),
        style: theme.bodyText2!.copyWith(color: Colors.white),
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
    return Column(
      children: [
        Container(
            child: ListTile(
          leading: GestureDetector(
            onTap: () {
             
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)
          ),
         
          trailing: InkWell(
            onTap: () {
            
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child:CircleAvatar(
                child: ClipOval(child:Image.asset('assets/1.jpg'))),
            ),
          ),
        )),
        
      ]  
    );
  }
