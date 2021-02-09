import 'package:flutter/material.dart';
import 'package:rina_project/app.dart';
import 'package:rina_project/screens/NavBar/NavBar.dart';
import 'package:rina_project/screens/Profile/profile.dart';
import '../../style.dart';

Store_user user;
Profile_info myUser;

void main() {
  Profile_info pre_myUser = new Profile_info("duck", "123");
  user = new Store_user();
  user.Update_Profile(pre_myUser);

  runApp(
    MaterialApp(
      title: 'Login',
      home: new Login(),
    ),
  );
}

class Profile_info {
  String username;
  String password;
  Profile_info(String username, String password) {
    this.username = username;
    this.password = password;
  }

  String get_Username() {
    return username;
  }

  String get_Password() {
    return password;
  }

  void update_password(newPassword) {
    this.password = newPassword;
  }

  void update_username(newUsername) {
    this.username = newUsername;
  }
}

class Store_user {
  List<Profile_info> profile;
  Store_user() {
    profile = new List();
  }
  void Update_Profile(Profile_info user) {
    profile.add(user);
  }

  Profile_info get_profile(int i) {
    return profile[i];
  }

  // int getLenght() {
  //   return profile.length;
  // }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

var username;
var password;

class _LoginState extends State<Login> {
  // final username = TextEditingController();
  // final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.cyan[100],
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue[100], Colors.cyan[500]]),
                  shape: BoxShape.circle),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text(
                "Healthee App",
                style: AppFont,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: textField(
                "Username",
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: textField("Password"),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: FlatButton(
                padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                onPressed: () {
                  // print('testing ${user.getLenght()}');

                  // myUser = new Profile_info(username, password);
                  // bool proceed = false;
                  // for (var i = 0; i < user.getLenght(); i++) {
                  //   if (user.get_profile(i).get_Username() ==
                  //           myUser.get_Username() &&
                  //       user.get_profile(i).get_Password() ==
                  //           myUser.get_Password()) {
                  //     proceed = true;
                  //     break;
                  //   }

                  //   if (proceed != false) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBar(
                        // profile: myUser,
                        username: username,
                      ),
                    ),
                  );
                  //   }
                  // }
                },
                color: Colors.black12,
                child: Text(
                  "Login",
                  style: ButtonTextStyle,
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(RegisterRoute);
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.cyan[900],
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextField textField(String label) {
    return TextField(
      // controller: name,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.cyan[50],
        labelText: label,
        labelStyle: Body1TextStyle,
        contentPadding: const EdgeInsets.only(left: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      onChanged: (event) {
        if (label == 'Username') {
          setState(() {
            username = event;
          });

          print('username -> $username');
        } else {
          setState(() {
            password = event;
          });

          print('password -> $password');
        }
      },
    );
  }
}
