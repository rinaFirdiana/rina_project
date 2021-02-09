import 'package:flutter/material.dart';
import 'package:rina_project/app.dart';
import 'package:rina_project/screens/Login/Login.dart';
import '../../style.dart';
import '../Profile/profile.dart';
import '../NavBar/NavBar.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

enum Gender { female, male }

class _ProfileState extends State<Profile> {
  Gender _gender = Gender.male;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue[200], Colors.cyan[200]])),
            height: 100,
            padding: const EdgeInsets.only(bottom: 10),
            margin: const EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "${username}",
                style: TitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          contain("Name:", "${username}"),
          contain("Dob:", "1/1/1999"),
          contain("Gender:", "Female"),
          contain("Height:", "160cm"),
          contain("Weight:", "55kg"),
          Container(
            margin: const EdgeInsets.only(bottom: 2, top: 2),
            decoration: BoxDecoration(
              color: Colors.cyan[50],
            ),
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
            child: Text(
              "BMT: " + "14",
              textAlign: TextAlign.center,
            ),
          ),
          contain("Weight Goal:", "50kg"),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 30, 40, 30),
            child: FlatButton(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              onPressed: () {
                Navigator.of(context).pushNamed(LoginRoute);
              },
              color: Colors.red[200],
              child: Text(
                "Logout",
                style: ButtonTextStyle,
              ),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container contain(String label, String value) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.cyan[50],
      ),
      margin: const EdgeInsets.only(bottom: 2, top: 2),
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(label),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              icon: Icon(Icons.mode_edit),
              onPressed: () => createdialog(context, label),
            ),
          ),
        ],
      ),
    );
  }

  createdialog(BuildContext context, String title) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.cyan[200],
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0)),
            content: Container(
              height: 180,
              width: 200.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Edit",
                      textAlign: TextAlign.center,
                      style: TitleTextStyle,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        isDense: true,
                        fillColor: Colors.cyan[100],
                        labelStyle: Body1TextStyle,
                        contentPadding: const EdgeInsets.all(7),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.cyan[400], width: 2.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      onPressed: () {
                        // Navigator.of(context).pushNamed(NavBarRoute);
                      },
                      color: Colors.black26,
                      child: Text(
                        "Add",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
