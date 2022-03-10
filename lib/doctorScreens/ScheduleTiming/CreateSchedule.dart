import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pmc_mobile_app/Utils/Colors.dart';

class CreateSchedule extends StatefulWidget {
  const CreateSchedule({Key? key}) : super(key: key);

  @override
  _CreateScheduleState createState() => _CreateScheduleState();   
}

class _CreateScheduleState extends State<CreateSchedule> {
  var groupR;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leadingWidth: (MediaQuery.of(context).size.width / 6.5),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Schedule',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Montserrat",
                      color: ColorBlack,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.calendar_today_outlined,
                        size: 15, color: BluishGrey),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text("Tuesday, January 11, 2022",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              color: BluishGrey)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => {
                Navigator.of(context).pop(),
              },
              child: Container(
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1.0,
                        spreadRadius: 1.0, //extend the shadow
                      ),
                    ]),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: ColorBlueblue,
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Schedule Name",
                      hintStyle: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: BluishGrey),
                      hoverColor: ColorBlueblue,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.calendar_today_outlined,
                          size: 20, color: ColorBlueblue),
                      hintText: "Start Date",
                      hintStyle: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: BluishGrey),
                      hoverColor: ColorBlueblue,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shifts',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Montserrat",
                            color: ColorBlack,
                            fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            ColorBlueblue,
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                              MediaQuery.of(context).size.width * 0.25, 0)),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          )),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) =>ProfilePage3()),
                          // );
                        },
                        child: Text(
                          "+ Add Shifts",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: whiteColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1.0,
                            spreadRadius: 1.0, //extend the shadow
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.40,
                                height: MediaQuery.of(context).size.height * 0.1,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Shift Start",
                                    hintStyle: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: BluishGrey),
                                    hoverColor: ColorBlueblue,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(14))),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 8.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.40,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.query_builder,
                                        size: 15,
                                        color: ColorBlueblue,
                                      ),
                                      hintText: "Break",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: BluishGrey),
                                      hoverColor: ColorBlueblue,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(14))),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.40,
                                height: MediaQuery.of(context).size.height * 0.1,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Shift End",
                                    hintStyle: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: BluishGrey),
                                    hoverColor: ColorBlueblue,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(14))),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 8.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.40,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Consultation Time",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: BluishGrey),
                                      hoverColor: ColorBlueblue,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(14))),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          alignment: Alignment.topRight,
                          child: TextButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(whiteColor),
                              fixedSize: MaterialStateProperty.all<Size>(Size(
                                  MediaQuery.of(context).size.width * 0.35,
                                  40)),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                            ),
                            onPressed: () => {},
                            icon: Icon(
                              Icons.delete_forever_outlined,
                              color: ColorRed,
                            ),
                            label: Text(
                              'Delete',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                color: ColorRed,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    'Repeat On',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Montserrat",
                        color: ColorBlack,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Wrap(
                              direction: Axis.horizontal,
                              spacing: 5,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.08,
                                  child: Chip(
                                    label: Text('MON',
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            color: whiteColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12)),
                                    backgroundColor: ColorBlueblue,
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.08,
                                  child: Chip(
                                    label: Text('TUE',
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            color: ColorBlack,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12)),
                                    side: BorderSide(
                                      width: 1,
                                      color: ColorBlueblue,
                                    ),
                                    backgroundColor: whiteColor,
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.08,
                                  child: Chip(
                                    label: Text('WED',
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            color: ColorBlack,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12)),
                                    side: BorderSide(
                                      width: 1,
                                      color: ColorBlueblue,
                                    ),
                                    backgroundColor: whiteColor,
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.08,
                                  child: Chip(
                                    label: Text('THURS',
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            color: ColorBlack,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12)),
                                    side: BorderSide(
                                      width: 1,
                                      color: ColorBlueblue,
                                    ),
                                    backgroundColor: whiteColor,
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.08,
                                  child: Chip(
                                    label: Text('FRI',
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            color: ColorBlack,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12)),
                                    side: BorderSide(
                                      width: 1,
                                      color: ColorBlueblue,
                                    ),
                                    backgroundColor: whiteColor,
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.08,
                                  child: Chip(
                                    label: Text('SAT',
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            color: ColorBlack,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12)),
                                    side: BorderSide(
                                      width: 1,
                                      color: ColorBlueblue,
                                    ),
                                    backgroundColor: whiteColor,
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.08,
                                  child: Chip(
                                    label: Text('SUN',
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            color: ColorBlack,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12)),
                                    side: BorderSide(
                                      width: 1,
                                      color: ColorBlueblue,
                                    ),
                                    backgroundColor: whiteColor,
                                  ),
                                ),
                              ]);
                        }),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    'Repeats',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Montserrat",
                        color: ColorBlack,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Radio(
                      value: "Dont Repeat",
                      groupValue: groupR,
                      onChanged: (T) {
                        setState(() {
                          this.groupR = T;
                        });
                      },
                    ),
                    Text(
                      'Dont Repeat',
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorBlueblue,
                      ),
                    ),
                    Radio(
                      value: "Repeat",
                      groupValue: groupR,
                      onChanged: (T) {
                        setState(() {
                          this.groupR = T;
                        });
                      },
                    ),
                    Text(
                      'Repeat',
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorBlueblue,
                      ),
                    )
                  ]),
                  Row(
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            ColorBlueblue,
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                              MediaQuery.of(context).size.width * 0.43, 0)),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          )),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) =>myProfilePage3()),
                          // );
                        },
                        child: Text(
                          "Save Schedule",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: whiteColor),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            whiteColor,
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                              MediaQuery.of(context).size.width * 0.43, 0)),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                            side: BorderSide(
                              color: ColorBlueblue,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          )),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) =>myProfilePage3()),
                          // );
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: ColorBlueblue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
