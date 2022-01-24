import 'package:flutter/material.dart';

class myProfilePage1 extends StatefulWidget {
  @override
  myProfilePage1State createState() => myProfilePage1State();
}

class myProfilePage1State extends State<myProfilePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black)), // You can add title here
          leading: new IconButton(
            hoverColor: Colors.lightBlueAccent,
            icon: new Icon(Icons.arrow_back_ios, color: Colors.blue),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            Row(children: [
              Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: IconButton(
                      icon: const Icon(Icons.edit_outlined),
                      color: Colors.blue,
                      onPressed: () {
                        print('button edit_outlined');
                      },
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Edit',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )),
            ]),
          ],
          backgroundColor:
              Colors.white.withOpacity(0.4), //You can make this transparent
          elevation: 0.0, //No shadow
        ),
        body: SafeArea(
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection : Axis.vertical,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Row(
                      children:[

                        CircleAvatar(

                          backgroundImage : AssetImage('assets/doctor_logo.png'),
                          radius: 35,

                            child: IconButton(
                             padding: EdgeInsets.fromLTRB(0,0,0,0),
                              icon: const Icon(Icons.photo_camera),
                              color: Colors. blueGrey,
                              hoverColor:Colors.lightBlueAccent,
                              onPressed: () {

                                print('button for new profile image');
                              },
                            ),

                        ),

                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15, 15, 2, 2),
                                child: Text('Patient Name', style: TextStyle(fontWeight: FontWeight.w700,color: Colors.blue,fontSize: 18)),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15, 5, 2, 2),
                                child: Text('Age : 24 years', style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15, 5,2, 20),
                                child: Row(
                                  children: [
                                    Text('Height : 160 cm  ',style: TextStyle(fontSize: 12)),
                                    Text(" | "),
                                    Text('Weight : 160lbs',style: TextStyle(fontSize: 12))
                                  ],
                                ),
                              ),
                            ]),
                      ]
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors. blueGrey.withOpacity(0.3), width: 1.5),
                          borderRadius: BorderRadius.circular(14),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Basic Information',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue)),

                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                        child: Text('Mobile Number:',   style: TextStyle(
                                                                      fontSize: 12,
                                                                      color: Colors. blueGrey),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                        child: Text('+911234567890', style: TextStyle(
                                                                    fontSize: 12,
                                                                      color: Colors.black),
                                        ),
                                      ),
                                    ],),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Email Id:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('abcdef@gmail.com', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),
                                  ],),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                            child: Text('Gender:',   style: TextStyle(
                                                fontSize: 12,
                                                color: Colors. blueGrey),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                            child: Text('Female', style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black),
                                            ),
                                          ),
                                        ],),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                            child: Text('Blood Group:',   style: TextStyle(
                                                fontSize: 12,
                                                color: Colors. blueGrey),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                            child: Text('Not Known', style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.blue),
                                            ),
                                          ),
                                        ],),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                            child: Text('Marital Status:',   style: TextStyle(
                                                fontSize: 12,
                                                color: Colors. blueGrey),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                            child: Text('Single', style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black),
                                            ),
                                          ),
                                        ],),
                                    ],),

                                ]),
                          ],
                        ),
                    ),

                       SizedBox(height:5),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors. blueGrey.withOpacity(0.3), width: 1.5),
                        borderRadius: BorderRadius.circular(14),
                      ),

                      child:Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Health Issues/ Risks',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blue)),
                                Container(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                    ),


                     SizedBox(height:5),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors. blueGrey.withOpacity(0.3), width: 1.5),
                        borderRadius: BorderRadius.circular(14),
                      ),

                      child:Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Preferences',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue)),
                            Container(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),


                     SizedBox(height:5),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors. blueGrey.withOpacity(0.3), width: 1.5),
                        borderRadius: BorderRadius.circular(14),
                      ),

                      child:Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Allergies',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue)),
                            Container(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height:5),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors. blueGrey.withOpacity(0.3), width: 1.5),
                        borderRadius: BorderRadius.circular(14),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Surgical History',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue)),

                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Date:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('12/12/2021', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Surgery Name:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Knee Surgery', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),
                                  ],),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Doctor Name:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Haley Lawrence', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Speciality:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Cardiologist', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),

                                  ],),

                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Other details of suergery',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blueGrey)),
                                      Text(
                                        'Continually unleash technically sound products before installed base opportunities.',
                                        style: TextStyle(fontSize: 12, color: Colors.black),
                                      ),
                                    ],
                                  ),


                              ]),
                        ],
                      ),
                    ),

                    SizedBox(height:5),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors. blueGrey.withOpacity(0.3), width: 1.5),
                        borderRadius: BorderRadius.circular(14),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Address',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue)),

                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Country:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('India', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Pincode:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('400001', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('State:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Maharashtra', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),

                                  ],),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('City:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Mumbai', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Area:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Bazargate', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Apartment:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Girivan', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),

                                  ],),


                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Organisation:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                                          child: Text('Girivan', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                          child: Text('Street/Locality/Landmark:',   style: TextStyle(
                                              fontSize: 12,
                                              color: Colors. blueGrey),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                          child: Text('Girivan', style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                          ),
                                        ),
                                      ],),

                                  ],),

                              ]),
                        ],
                      ),
                    ),

                  ]),
              ),
            )));
  }
}
