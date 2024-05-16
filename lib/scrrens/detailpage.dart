import 'dart:io';

import 'package:edupluse/utils/global.dart';
import 'package:edupluse/utils/modalclass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  void initState() {
    // Global.student = Student.frommap(data: ) as List<Student>;
    super.initState();
  }

  ImagePicker imagePicker = ImagePicker();
  XFile? xFile;
  String? pickImagePath;
  bool istapped = true;
  GlobalKey<FormState> informationKey = GlobalKey<FormState>();
  TextEditingController girdController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController standardController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edupluse",
            style: GoogleFonts.getFont("Satisfy",
                textStyle: const TextStyle(fontSize: 25))),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: informationKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          istapped = true;
                        });
                      },
                      child: Text("Deatils",
                          style: GoogleFonts.getFont("Mulish",
                              textStyle: const TextStyle(fontSize: 18))),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          istapped = false;
                        });
                      },
                      child: Text("Photo",
                          style: GoogleFonts.getFont("Mulish",
                              textStyle: const TextStyle(fontSize: 18))),
                    )
                  ],
                ),
              ),
              (istapped)
                  ? SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 260,
                            width: 260,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: NetworkImage(
                                  "https://static.vecteezy.com/system/resources/previews/013/210/334/original/student-abstract-flat-illustration-education-concept-graduation-vector.jpg"),
                            )),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 1,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            spreadRadius: 5,
                                            blurRadius: 10,
                                            color: Colors.grey.shade200,
                                            offset: const Offset(0, 5))
                                      ]),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Text("Enter Your Information",
                                            style: GoogleFonts.getFont("Mulish",
                                                textStyle: const TextStyle(
                                                    fontSize: 18))),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 20,
                                                left: 20,
                                              ),
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter gird first";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.gird = val ?? "";
                                                },
                                                controller: girdController,
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: "GRIG",
                                                ),
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.delete_outline,
                                              size: 28,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 20,
                                                left: 20,
                                              ),
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter contact first";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.name = val ?? "";
                                                },
                                                controller: nameController,
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: "Name",
                                                ),
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.delete_outline,
                                              size: 28,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 20,
                                                left: 20,
                                              ),
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter standard first";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  Global.standard = val ?? "";
                                                },
                                                controller: standardController,
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: "Standard",
                                                ),
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setState(() {});
                                            },
                                            icon: const Icon(
                                              Icons.delete_outline,
                                              size: 28,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 13.5, top: 30),
                                                child: SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      12,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      1.2,
                                                  child: const Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 20),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 230,
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, top: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset: Offset(0, 5))
                              ]),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text("Pick Image"),
                                      content: const Text(
                                        "Choose Image From Gallery or Camera",
                                      ),
                                      actions: [
                                        FloatingActionButton(
                                          onPressed: () async {
                                            xFile = await imagePicker.pickImage(
                                                source: ImageSource.camera);
                                            setState(() {
                                              if (xFile != null) {
                                                pickImagePath = xFile!.path;
                                              }
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: const Icon(
                                            Icons.camera,
                                          ),
                                        ),
                                        FloatingActionButton(
                                            onPressed: () async {
                                              xFile =
                                                  await imagePicker.pickImage(
                                                      source:
                                                          ImageSource.gallery);
                                              setState(() {
                                                if (xFile != null) {
                                                  pickImagePath = xFile!.path;
                                                }
                                                Navigator.of(context).pop();
                                              });
                                            },
                                            child: const Icon(
                                              Icons.image,
                                            ))
                                      ],
                                    );
                                  });
                            },
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.grey,
                              backgroundImage: (pickImagePath != null)
                                  ? FileImage(File(pickImagePath!))
                                  : null,
                              child: (pickImagePath != null)
                                  ? Container()
                                  : Icon(
                                      Icons.add,
                                      size: 35,
                                      color: Colors.black,
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        nameController.clear();
                        girdController.clear();
                        standardController.clear();
                      },
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                        foregroundColor: Colors.black,
                      ),
                      child: const Text("Clear"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (informationKey.currentState!.validate()) {
                          informationKey.currentState!.save();
                          informationKey.currentState!.reset();
                          nameController.clear();
                          girdController.clear();
                          standardController.clear();

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.grey,
                              action: SnackBarAction(
                                label: "Next",
                                onPressed: () {
                                  setState(() {});
                                },
                                textColor: Colors.black,
                              ),
                              content: const Text("Saved successfully"),
                            ),
                          );
                          nameController.clear();
                          girdController.clear();
                          standardController.clear();

                          Student student = Student(
                              grid: Global.gird,
                              name: Global.name,
                              standard: Global.standard,
                              photo: Global.photo);
                          Global.allstudent.add(student);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                      child: const Text("Save"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
