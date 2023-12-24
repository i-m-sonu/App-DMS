import 'dart:async';

import 'package:dms/detail.dart';
import 'package:dms/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loader extends StatefulWidget {
  @override
  State<loader> createState() => _loaderState();
}

class _loaderState extends State<loader> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
