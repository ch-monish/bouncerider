import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int phoneno = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
        home: Scaffold(
      // return Scaffold(
      appBar: AppBar(
        title: const Text('', style: TextStyle(color: Color(0xFFFFFFFF))),
        // titleTextStyle: Colors.red,
        elevation: 0,
        toolbarHeight: 45,
        foregroundColor: Colors.black,
        backgroundColor: Colors.orange[900],
        actions: <Widget>[],
      ),
      body: SafeArea(
        child: Container(
          decoration: new BoxDecoration(),
          height: MediaQuery.of(context).size.height * 1,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                ),

                // SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Rider',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  // height: 80,

                  child: TextField(
                      style: TextStyle(
                        // height: 0.01,
                        color: Colors.black,
                        decorationColor: Colors.black,
                      ),
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          phoneno = int.parse(value);
                        });
                      },
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(),
                        labelText: 'Enter Mobile Number',

                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                      ),
                      cursorHeight: 20,
                      cursorColor: Colors.black,
                      maxLength: 10,
                      autofocus: false,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number),
                ),
                SizedBox(height: 40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      // style:raisedButtonStyle,
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * 0.80, 40),
                        primary: Colors.orange[800],

                        // double.infinity is the width and 30 is the height
                      ),

                      onPressed: () {
                        Navigator.pushNamed(context, '/verification');
                        print(phoneno);
                      },

                      child: const Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
