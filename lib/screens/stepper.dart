import 'package:flutter/material.dart';

class Stepper_page extends StatefulWidget {

  @override
  _Stepper_pageState createState() => _Stepper_pageState();
}

class _Stepper_pageState extends State<Stepper_page> {
  int Current_Step = 0;
  List<Step> My_Steps = [
    Step(
      title: Text("Step 1"),
      content: Text("Some Content 1"),
      isActive: true,
    ),
    Step(
      title: Text("Step 2"),
      content: Text("Some Content 2"),
      isActive: true,
    ),
    Step(
      title: Text("Step 3"),
      content: Text("Some Content 3"),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stepper(
          steps: My_Steps,
          currentStep: this.Current_Step,
          type: StepperType.vertical,
        ),
      ),
    );
  }
}
