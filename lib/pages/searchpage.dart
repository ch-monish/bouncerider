import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  Searchpage({Key? key}) : super(key: key);

  @override
  _SearchpageState createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  IconData(
                    59483,
                    fontFamily: 'MaterialIcons',
                    matchTextDirection: true,
                  ),
                  size: 35,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          elevation: 0,
          foregroundColor: Colors.blue,
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: TextField(
            obscureText: false,
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Enter Pickup',
              prefixIcon: Icon(
                IconData(
                  59394,
                  fontFamily: 'MaterialIcons',
                ),
                color: Colors.greenAccent[400],
                size: 10,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade200, width: 3.0),
                borderRadius: const BorderRadius.all(Radius.circular(32.0)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade200, width: 2.0),
                borderRadius: const BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
        ));
  }
}
