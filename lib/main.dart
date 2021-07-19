import 'package:flutter/material.dart';
import 'package:flutter_tile/screens/App_nav.dart';
import 'package:flutter_tile/screens/SnackBar.dart';
import 'package:flutter_tile/screens/bottom_nav.dart';
import 'package:flutter_tile/screens/stepper.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Utils App")),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Stepper"),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Stepper_page()),
                  ),
                ),
                ElevatedButton(
                  child: Text("SnackBar"),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SnackBarPage()),
                  ),
                ),
                ElevatedButton(
                  child: Text("Top Navigation Bar"),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Top_Nav()),
                  ),
                ),
                ElevatedButton(
                  child: Text("Bottom Navigation Bar"),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bottom_Nav()),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
