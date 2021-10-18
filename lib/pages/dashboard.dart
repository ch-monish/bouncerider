import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                IconData(
                  58444,
                  fontFamily: 'MaterialIcons',
                  matchTextDirection: true,
                ),
                size: 35,
                color: Colors.black54,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/searchpage");
          },
          child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: const Offset(
                      0.0, // Move to right 10  horizontally
                      2.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Icon(
                    const IconData(
                      59394,
                      fontFamily: 'MaterialIcons',
                    ),
                    color: Colors.greenAccent[400],
                    size: 10,
                  ),
                  SizedBox(width: 8),
                  const Text("Your location",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              )),
        ),
        // Container(
        //     decoration: const BoxDecoration(
        //         // color: Colors.green,
        //         ),
        //     child: InkWell(
        //       onTap: () {
        //         Navigator.pushNamed(context, "/searchpage");
        //       },
        //       child: TextField(
        //         // readOnly: true,
        //         autofocus: false,
        //         onChanged: (value) {
        //           //Do something with the user input.
        //           Navigator.pushNamed(context, "/searchpage");
        //         },
        //         decoration: InputDecoration(
        //           hintText: 'Your Location',
        //           prefixIcon: Icon(
        //             IconData(
        //               59394,
        //               fontFamily: 'MaterialIcons',
        //             ),
        //             color: Colors.greenAccent[400],
        //             size: 10,
        //           ),
        //           contentPadding:
        //               EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        //           border: OutlineInputBorder(
        //             borderRadius: BorderRadius.all(Radius.circular(32.0)),
        //           ),
        //           enabledBorder: OutlineInputBorder(
        //             borderSide:
        //                 BorderSide(color: Colors.grey.shade200, width: 3.0),
        //             borderRadius: const BorderRadius.all(Radius.circular(32.0)),
        //           ),
        //           focusedBorder: OutlineInputBorder(
        //             borderSide:
        //                 BorderSide(color: Colors.grey.shade200, width: 2.0),
        //             borderRadius: const BorderRadius.all(Radius.circular(32.0)),
        //           ),
        //         ),
        //       ),
        //     )),
        actions: [
          Row(
            children: [
              Icon(
                IconData(58392, fontFamily: 'MaterialIcons'),
                color: Colors.black54,
              ),
              SizedBox(width: 20),
            ],
          )
        ],
      ),
      drawer: Drawer(
        child: Homepagedrawer(),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Text("Map view"),
        ),
      ),
    );
  }

  Widget Homepagedrawer() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.greenAccent[400],
            child: Row(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.only(top: 20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://merodesk.com/wp-content/uploads/2021/05/user-4.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: 28),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        'Hello!',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/profile");
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              "My Profile",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              IconData(57500, fontFamily: 'MaterialIcons'),
                              color: Colors.white,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    print("payments");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 35),
                        Text("Payments",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: () {
                    print("payments");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 35),
                        Text("Your Rides",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: () {
                    print("payments");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 35),
                        Text("Issue Report",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("payments");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 35),
                        Text("Support",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("payments");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 35),
                        Text("About",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("payments");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 35),
                        Text("Help",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("payments");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 35),
                        Text("Logout",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
