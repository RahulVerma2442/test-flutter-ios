import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../Model/mentor_details.dart';

class MentorForm extends StatefulWidget {
  const MentorForm({Key? key}) : super(key: key);

  @override
  _MentorFormState createState() => _MentorFormState();
}

class _MentorFormState extends State<MentorForm> {
  final _name = FocusNode();
  final _email = FocusNode();
  final _course = FocusNode();
  final _linkedin = FocusNode();
  final _university = FocusNode();
  final _pg_university = FocusNode();
  final _gre = FocusNode();
  final _ugcourse = FocusNode();
  final _ugclgtier = FocusNode();
  final _workexperience = FocusNode();
  final _abc = FocusNode();
  final _form = GlobalKey<FormState>();
  final _scafoldKey = GlobalKey<ScaffoldState>();
  var _edited_details = MentorDetails(
      id: 0,
      name: "",
      course: "",
      email: "",
      gre: "",
      linkedin: "",
      pgUniversity: "",
      ugclgtier: "",
      ugcourse: "",
      university: "",
      workExperience: "");

  @override
  void dispose() {
    _name.dispose();
    _course.dispose();
    _email.dispose();
    _gre.dispose();
    _linkedin.dispose();
    _pg_university.dispose();
    _ugclgtier.dispose();
    _ugcourse.dispose();
    _university.dispose();
    _workexperience.dispose();
    super.dispose();
  }

  void saveForm() {
    _form.currentState?.save();
    
    createMentor();
    print(json.encode(_edited_details.toJson()));
  }
  void showSnackBar(String s){
        _scafoldKey.currentState?.showSnackBar(new SnackBar(content: new Text(s)));


  }
  createMentor() async {
    final postUrl = Uri.parse(
        "https://urzf2afeja.execute-api.us-east-2.amazonaws.com/prod/form/mentor");

    final response = await http.post(postUrl,
        body: json.encode(_edited_details.toJson()),
        headers: {"X-api-key": "jTf6pzUuZI864gLafLPxQ7WkQFr4Klffwk1At16g"},
      );
    print(response.body);
    print(response.statusCode);
    String temp = "Response Code:- " + response.statusCode.toString();
    showSnackBar(temp);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafoldKey,
      backgroundColor: const Color(0xfffff4e4),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
              width: double.infinity,
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Mentors",
                  style: TextStyle(
                    fontSize: 29,
                    color: Color(0xffe16259),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 400,
                width: double.infinity,
                child: Form(
                  key: _form,
                  child: SingleChildScrollView(
                    child: Column(children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xffe16259),
                        ),
                        cursorColor: const Color(0xffe16259),
                        focusNode: _abc,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Color(0xffe16259),
                              ),
                            ),
                            focusColor: const Color(0xffe16259),
                            labelText: 'Name',
                            labelStyle: const TextStyle(
                              color: Color(0xffe16259),
                            )),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_email);
                        },
                        onSaved: (value) {
                          if (value != null) {
                            _edited_details.name = value;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xffe16259),
                        ),
                        cursorColor: const Color(0xffe16259),
                        focusNode: _email,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Color(0xffe16259),
                              ),
                            ),
                            focusColor: const Color(0xffe16259),
                            labelText: 'E-mail',
                            labelStyle: const TextStyle(
                              color: Color(0xffe16259),
                            )),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_linkedin);
                        },
                        onSaved: (value) {
                          if (value != null) {
                            _edited_details.email = value;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xffe16259),
                        ),
                        cursorColor: const Color(0xffe16259),
                        focusNode: _linkedin,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Color(0xffe16259),
                              ),
                            ),
                            focusColor: const Color(0xffe16259),
                            labelText: 'Linkedin',
                            labelStyle: TextStyle(
                              color: Color(0xffe16259),
                            )),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_course);
                        },
                        onSaved: (value) {
                          if (value != null) {
                            _edited_details.linkedin = value;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xffe16259),
                        ),
                        cursorColor: const Color(0xffe16259),
                        focusNode: _course,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Color(0xffe16259),
                              ),
                            ),
                            focusColor: const Color(0xffe16259),
                            labelText: 'Course',
                            labelStyle: TextStyle(
                              color: Color(0xffe16259),
                            )),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_university);
                        },
                        onSaved: (value) {
                          if (value != null) {
                            _edited_details.course = value;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xffe16259),
                        ),
                        cursorColor: const Color(0xffe16259),
                        focusNode: _university,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27),
                            borderSide: const BorderSide(
                              color: Color(0xffe16259),
                            ),
                          ),
                          focusColor: const Color(0xffe16259),
                          labelText: 'University',
                          labelStyle: TextStyle(
                            color: Color(0xffe16259),
                          ),
                        ),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_pg_university);
                        },
                        onSaved: (value) {
                          if (value != null) {
                            _edited_details.university = value;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xffe16259),
                        ),
                        cursorColor: const Color(0xffe16259),
                        focusNode: _pg_university,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Color(0xffe16259),
                              ),
                            ),
                            focusColor: const Color(0xffe16259),
                            labelText: 'PgUniversity',
                            labelStyle: TextStyle(
                              color: Color(0xffe16259),
                            )),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_gre);
                        },
                        onSaved: (value) {
                          if (value != null) {
                            _edited_details.pgUniversity = value;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xffe16259),
                        ),
                        cursorColor: const Color(0xffe16259),
                        focusNode: _gre,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Color(0xffe16259),
                              ),
                            ),
                            focusColor: const Color(0xffe16259),
                            labelText: 'GRE',
                            labelStyle: TextStyle(
                              color: Color(0xffe16259),
                            )),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_ugcourse);
                        },
                        onSaved: (value) {
                          if (value != null) {
                            _edited_details.gre = value;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xffe16259),
                        ),
                        cursorColor: const Color(0xffe16259),
                        focusNode: _ugcourse,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Color(0xffe16259),
                              ),
                            ),
                            focusColor: const Color(0xffe16259),
                            labelText: 'UgCourse',
                            labelStyle: TextStyle(
                              color: Color(0xffe16259),
                            )),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_ugclgtier);
                        },
                        onSaved: (value) {
                          if (value != null) {
                            _edited_details.ugcourse = value;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xffe16259),
                        ),
                        cursorColor: const Color(0xffe16259),
                        focusNode: _ugclgtier,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27),
                            borderSide: const BorderSide(
                              color: Color(0xffe16259),
                            ),
                          ),
                          focusColor: const Color(0xffe16259),
                          labelText: 'UgClgTier',
                          labelStyle: const TextStyle(
                            color: Color(0xffe16259),
                          ),
                        ),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_workexperience);
                        },
                        onSaved: (value) {
                          if (value != null) {
                            _edited_details.ugclgtier = value;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Color(0xffe16259),
                        ),
                        cursorColor: const Color(0xffe16259),
                        focusNode: _workexperience,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                              borderSide: const BorderSide(
                                color: Color(0xffe16259),
                              ),
                            ),
                            focusColor: const Color(0xffe16259),
                            labelText: 'WorkExperience',
                            labelStyle: TextStyle(
                              color: Color(0xffe16259),
                            )),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          saveForm();
                        },
                        onSaved: (value) {
                          if (value != null) {
                            _edited_details.workExperience = value;
                          }
                        },
                      ),
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: Center(
                child: ButtonTheme(
                  height: 100,
                  minWidth: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xffe16259),
                        textStyle: const TextStyle(
                            fontSize: 29, fontWeight: FontWeight.w500)),
                    onPressed: () {
                      saveForm();
                    },
                    child: const Text("Submit"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
