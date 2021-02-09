import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../style.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:rina_project/app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController customController = new TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 20),
              margin: const EdgeInsets.only(bottom: 10),
              height: 200,
              color: Colors.red[100],
              child: new Column(
                children: [
                  Container(
                    child: Text("You have 1000 calories left",
                        style: TitleTextStyle),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 40, right: 30, left: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          16.0), // Change this like you want
                      clipBehavior: Clip.antiAlias,

                      child: StepProgressIndicator(
                        totalSteps: 1800,
                        currentStep: 800,
                        size: 30,
                        padding: 0,
                        selectedGradientColor: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.lightGreenAccent, Colors.greenAccent],
                        ),
                        unselectedGradientColor: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blueGrey[200], Colors.grey],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 0, right: 30, left: 0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 10, left: 300),
                          child: Text(
                            "1800 calories",
                            style: ButtonTextStyle,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              margin: const EdgeInsets.only(bottom: 10),
              height: 280,
              color: Colors.cyan[100],
              child: new Column(
                children: [
                  Container(
                    child: Text("Current Weight: 75kg", style: TitleTextStyle),
                  ),
                  Container(
                      padding:
                          const EdgeInsets.only(top: 15, right: 30, left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("90kg", style: ButtonTextStyle),
                          Text("60kg", style: ButtonTextStyle)
                        ],
                      )),
                  Container(
                    padding: const EdgeInsets.only(top: 5, right: 30, left: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          16.0), // Change this like you want
                      clipBehavior: Clip.antiAlias,

                      child: StepProgressIndicator(
                        totalSteps: 1800,
                        currentStep: 800,
                        size: 30,
                        padding: 0,
                        selectedGradientColor: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.pinkAccent, Colors.purpleAccent],
                        ),
                        unselectedGradientColor: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blueGrey[200], Colors.grey],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("15kg more to reach your goal!"),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                      onPressed: () =>
                          createAlertDialog(context, "Update Food"),
                      color: Colors.cyan[400],
                      child: Text(
                        "Update Weight",
                        style: ButtonTextStyle,
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              margin: const EdgeInsets.only(bottom: 10),
              height: 150,
              color: Colors.cyan[100],
              child: new Column(
                children: [
                  Container(
                    child: Text("Add food", style: TitleTextStyle),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                      onPressed: () => createdialog(context),
                      color: Colors.cyan[400],
                      child: Text(
                        "Add food",
                        style: ButtonTextStyle,
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  createAlertDialog(BuildContext context, String name) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.cyan[300],
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0)),
            content: Container(
              height: 150,
              width: 200.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Update Weight",
                      textAlign: TextAlign.center,
                      style: TitleTextStyle,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextField(
                      keyboardType: TextInputType.number,
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
                        "Update",
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

  createdialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.cyan[300],
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0)),
            content: Container(
              height: 250,
              width: 200.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Add food",
                      textAlign: TextAlign.center,
                      style: TitleTextStyle,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Food Name:",
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
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Calories",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6),
                    child: TextField(
                      keyboardType: TextInputType.number,
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
