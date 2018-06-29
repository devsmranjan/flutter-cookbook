import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stepper',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int current_step = 0;
  List<Step> my_steps = [
    new Step(
      // Title of the Step
        title: new Text("Step 1"),
        content: new Text("Hey!"),
        isActive: true),
    new Step(
        title: new Text("Step 2"),
        content: new Text("there!"),
        state: StepState.complete,
        isActive: true),
    new Step(
        title: new Text("Step 3"),
        content: new Text("Hey there!"),
        isActive: true),
  ];


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stepper"),
      ),
      body: new Container(
          child: new Stepper(
            currentStep: this.current_step,
            steps: my_steps,
            type: StepperType.vertical,
            onStepTapped: (step) {
              setState(() {
                current_step = step;
              });
              print("onStepTapped : " + step.toString());
            },
            onStepCancel: () {
              setState(() {
                // update the variable handling the current step value
                // going back one step i.e subtracting 1, until its 0
                if (current_step > 0) {
                  current_step = current_step - 1;
                } else {
                  current_step = 0;
                }
              });
              // Log function call
              print("onStepCancel : " + current_step.toString());
            },
            // On hitting continue button, change the state
            onStepContinue: () {
              setState(() {
                // update the variable handling the current step value
                // going back one step i.e adding 1, until its the length of the step
                if (current_step < my_steps.length - 1) {
                  current_step = current_step + 1;
                } else {
                  current_step = 0;
                }
              });
              print("onStepContinue : " + current_step.toString());
            },
          )),
    );
  }
}
