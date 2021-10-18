import 'dart:io';

import "package:flutter/material.dart";
import 'package:image_picker/image_picker.dart';

class Uploadlicence extends StatefulWidget {
  Uploadlicence({Key? key}) : super(key: key);

  @override
  _UploadlicenceState createState() => _UploadlicenceState();
}

class _UploadlicenceState extends State<Uploadlicence> {
  final ImagePicker picker = ImagePicker();
  XFile imageselected = XFile("images/uploadimage.png");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                const IconData(
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

        // titleTextStyle: Colors.red,
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        actions: <Widget>[],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(""),
              OutlinedButton(
                  onPressed: () {
                    print("calling fun");
                    showModalBottomSheet(
                        context: context, builder: (builder) => bottomsheet());
                  },
                  child: const Text("choose Image")),
              imageselected.path.toString() == "images/uploadimage.png"
                  ? Text("uplod photo")
                  : Text(imageselected.path.toString()),
              // imageselected == null
              //     ? Image(image: AssetImage('images/uploadimage.png'))
              //     : Image(image: AssetImage(imageselected.path)),
              Container(
                child: imageselected.path.toString() == "images/uploadimage.png"
                    ? Image(image: AssetImage('images/uploadimage.png'))
                    : Image.file(File(imageselected.path)),
              ),
              Container(
                child: imageselected.path.toString() == "images/uploadimage.png"
                    ? null
                    : ElevatedButton(
                        // style:raisedButtonStyle,
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.80, 40),
                          primary: Colors.orange[800],

                          // double.infinity is the width and 30 is the height
                        ),

                        onPressed: () {
                          Navigator.pushNamed(context, '/dashboard');
                        },

                        child: const Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w800),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void SelectImage(ImageSource s) async {
    print("selectimage fun");
    final XFile? selectedimage = await picker.pickImage(source: s);
    if (selectedimage!.path.isNotEmpty) {
      setState(() {
        imageselected = selectedimage;
      });
      print(selectedimage.path.toString());
    }
  }

  Widget bottomsheet() {
    print("bottomsheetuploaded fun");
    return Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          // color: Colors.blue,
        ),
        child: Column(
          children: <Widget>[
            Text(
              "choose profile photo",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton.icon(
                    style: ButtonStyle(),
                    onPressed: () {
                      print("photo");
                      SelectImage(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera),
                    label: Text("camera")),
                TextButton.icon(
                    onPressed: () {
                      SelectImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image),
                    label: Text("Galery")),
              ],
            )
          ],
        ));
  }
}
