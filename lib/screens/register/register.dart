import 'dart:convert';

import 'package:flutter/material.dart';
import '../../style.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

enum Gender { female, male }

class _RegisterState extends State<Register> {
  Gender _gender = Gender.male;

  final username = TextEditingController();
  final password = TextEditingController();
  final email = TextEditingController();
  final dob = TextEditingController();
  final gender = TextEditingController();
  final weight = TextEditingController();
  final height = TextEditingController();
  final weightG = TextEditingController();
  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        title: Text(
          'Register',
          style: AppBarTextStyle,
        ),
        backgroundColor: Colors.cyan[300],
      ),
      backgroundColor: Colors.cyan[50],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text("Username:"),
                  ),
                  Expanded(
                    flex: 3,
                    child: textField(username),
                  ),
                ],
              ),
            ),
            container("Password:", password),
            container("Email :", email),
            container("Name:", name),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text("Gender:"),
                  ),
                  Expanded(
                    flex: 4,
                    child: Row(
                      children: [
                        Radio(
                          value: Gender.male,
                          groupValue: _gender,
                          onChanged: (Gender value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                        Container(
                          child: Text("Male"),
                        ),
                        Radio(
                          value: Gender.female,
                          groupValue: _gender,
                          onChanged: (Gender value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                        Container(
                          child: Text("Female"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            containerNum("height:", height),
            containerNum("Weight:", weight),
            containerNum("Weight Goal:", weightG),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: FlatButton(
                padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                onPressed: () {},
                color: Colors.cyan[400],
                child: Text(
                  "register",
                  style: ButtonTextStyle,
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextField textField(TextEditingController name) {
    return TextField(
      controller: name,
      decoration: InputDecoration(
        labelStyle: TFTextStyle,
        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        isDense: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
        ),
      ),
    );
  }

  Container container(String label, TextEditingController name) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 2,
            child: Text(label),
          ),
          Expanded(
            flex: 3,
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                labelStyle: TFTextStyle,
                contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                isDense: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container containerNum(String label, TextEditingController name) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 2,
            child: Text(label),
          ),
          Expanded(
            flex: 3,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: name,
              decoration: InputDecoration(
                labelStyle: TFTextStyle,
                contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                isDense: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
