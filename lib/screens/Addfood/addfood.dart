import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../style.dart';
import '../../models/Addfood.dart';

class Addfood extends StatefulWidget {
  @override
  _AddFoodState createState() => _AddFoodState();
}

class _AddFoodState extends State<Addfood> {
  TextEditingController customController = new TextEditingController();

  Widget build(BuildContext context) {
    final addfood = AddFood.fetchAll();
    return new Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20),
            margin: const EdgeInsets.only(bottom: 10),
            height: 150,
            color: Colors.red[100],
            child: new Column(
              children: [
                Container(
                  child: Text("Add food", style: TitleTextStyle),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: FlatButton(
                    padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                    onPressed: () => createdialog2(context),
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
          Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Food added",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Slidable(
          //   actionPane: SlidableDrawerActionPane(),
          //   actionExtentRatio: 0.25,
          //   child:
          Expanded(
            child: Container(
              height: 400,
              child: Container(
                child: ListView.builder(
                  itemCount: addfood.length,
                  itemBuilder: (context, index) =>
                      _itemBuilder(context, addfood[index]),
                ),
              ),
            ),
          ),
          //     secondaryActions: <Widget>[
          //       new IconSlideAction(
          //         caption: 'Delete',
          //         color: Colors.red,
          //         icon: Icons.delete,
          //         onTap: () => Text('Delete'),
          //       ),
          //     ],
          //   ),
        ],
      ),
    );
  }

  createdialog2(BuildContext context) {
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

  createdialog(BuildContext context, String name, String label, String cal) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.cyan[300],
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0)),
            content: Container(
              height: 310,
              width: 200.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: Text(
                      name,
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
                    child: TextFormField(
                      initialValue: label,
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
                    child: TextFormField(
                      initialValue: cal,
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
                        // Navigator.of(context).pushNamed();
                      },
                      color: Colors.black26,
                      child: Text(
                        "Edit",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: FlatButton(
                      color: Colors.red[300],
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      onPressed: () {
                        // Navigator.of(context).pushNamed();
                      },
                      child: Text(
                        "Delete",
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

  Widget _itemBuilder(BuildContext context, AddFood addfood) {
    int calorie = addfood.calorie;
    String calories = "$calorie";
    return GestureDetector(
      onTap: () => createdialog(context, "Edit Food", addfood.name, calories),
      child: Container(
        height: 85,
        margin: const EdgeInsets.only(bottom: 8),
        // padding: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[200]),
          color: Colors.cyan[50],
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      addfood.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Calories: " + calories,
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Icon(
                Icons.linear_scale,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
