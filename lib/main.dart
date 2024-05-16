import 'package:edupluse/scrrens/detailpage.dart';
import 'package:edupluse/scrrens/homepage.dart';
import 'package:edupluse/scrrens/studentdeatil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => const homepage(),
      "detailpage": (context) => const detailpage(),
      "studentdetail": (context) => const studentdetail(),
    },
  ));
}
