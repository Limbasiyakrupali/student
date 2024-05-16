import 'package:edupluse/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class studentdetail extends StatefulWidget {
  const studentdetail({super.key});

  @override
  State<studentdetail> createState() => _studentdetailState();
}

class _studentdetailState extends State<studentdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edupluse",
            style: GoogleFonts.getFont("Satisfy",
                textStyle: const TextStyle(fontSize: 25))),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: SingleChildScrollView(
            child: Container(
              height: 500,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    )
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...Global.allstudent.map(
                      (e) => GestureDetector(
                        onTap: () {
                          Global.selectedstudent = e;
                          Navigator.of(context).pushNamed('resumeviwer');
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 100,
                          width: 340,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(0),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  spreadRadius: 5,
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                )
                              ]),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(Global.gird,
                                          style: GoogleFonts.getFont("Mulish",
                                              textStyle: const TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black))),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(Global.name,
                                      style: GoogleFonts.getFont("Mulish",
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.black))),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(Global.standard,
                                      style: GoogleFonts.getFont("Mulish",
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.black))),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
