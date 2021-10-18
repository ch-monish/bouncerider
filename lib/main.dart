import 'package:flutter/material.dart';
import 'package:rider/pages/dashboard.dart';
import 'package:rider/pages/login.dart';
import 'package:rider/pages/profile.dart';
import 'package:rider/pages/searchpage.dart';
import 'package:rider/pages/uploadlicence.dart';
import 'package:rider/pages/verification.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MaterialApp(
      home: Login(),
      routes: {
        // '/': (context) => Login(),
        '/login': (context) => Login(),
        '/verification': (context) => Verification(),
        '/uploadlicense': (context) => Uploadlicence(),
        '/dashboard': (context) => Dashboard(),
        '/searchpage': (context) => Searchpage(),
        '/profile': (context) => Profile(),
      },
    ));
