import 'package:flutter/material.dart';
import 'package:flutter_training/section_13/homework.dart';

void main() {
  runApp(const StepperTraining());
}

class StepperTraining extends StatelessWidget {
  const StepperTraining({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CheckBox'),
          centerTitle: true,
        ),
        body: const FormBodyStepper(),
      ),
    );
  }
}

class FormBodyStepper extends StatefulWidget {
  const FormBodyStepper({super.key});

  @override
  State<FormBodyStepper> createState() => _FormBodyStepperState();
}

class _FormBodyStepperState extends State<FormBodyStepper> {
  int _activeStep = 0;
  String? name, email, password;
  late List<Step> allSteps;
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();
  bool error = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    allSteps = _allSteps();

    return Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Stepper(
                steps: _allSteps(),
                currentStep: _activeStep,
                onStepTapped: (clickedStep) {
                  setState(() {
                    _activeStep = clickedStep;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    if (_activeStep < allSteps.length - 1) {
                      // _activeStep++;
                      _nextContinueCheck();
                    }
                  });
                },
                onStepCancel: () {
                  setState(() {
                    if (_activeStep > 0) {
                      _activeStep--;
                    }
                  });
                },
              ),
            ),
          ],
        ));
  }

  List<Step> _allSteps() {
    List<Step> steps = [
      Step(
        title: Text('Enter to Username'),
        subtitle: Text('Username subTitle'),
        state: _settingsForState(0),
        content: TextFormField(
          key: key0,
          decoration: InputDecoration(
              labelText: 'Username',
              hintText: 'Enter Username',
              border: OutlineInputBorder()),
          validator: (enteredValue) {
            if (enteredValue!.length < 6) {
              return "Please enter minimum 6 character";
            }
          },
          onSaved: (enteredValue) {
            name = enteredValue;
          },
        ),
      ),
      Step(
          title: Text('Enter to Email'),
          subtitle: Text('email subTitle'),
          state: _settingsForState(1),
          content: TextFormField(
            key: key1,
            decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter Email',
                border: OutlineInputBorder()),
            validator: (enteredValue) {
              if (enteredValue!.length < 6 ) {
                return "Please enter correctly email";
              }
            },
            onSaved: (enteredValue) {
              email = enteredValue;
            },
          )),
      Step(
          title: Text('Enter to Password'),
          subtitle: Text('Password subTitle'),
          state: _settingsForState(2),
          content: TextFormField(
            key: key2,
            decoration: InputDecoration(
                labelText: 'Pasword',
                hintText: 'Enter Password',
                border: OutlineInputBorder()),
            validator: (enteredValue) {
              if (enteredValue!.length > 6) {
                return "Please enter minimum character ";
              }
            },
            onSaved: (enteredValue) {
              password = enteredValue;
            },
          )),
    ];
    return steps;
  }

  StepState _settingsForState(int selectedStep) {
    if (_activeStep == selectedStep) {
      if (error) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _nextContinueCheck() {
    switch (_activeStep) {
      case 0:
        if (key0.currentState!.validate()) {
          key0.currentState?.save();
          error = true;
          _activeStep++;
        } else {
          error = false;
        }
        switch (_activeStep) {
          case 1:
            if (key1.currentState!.validate()) {
              key1.currentState?.save();
              error = true;
              _activeStep++;
            } else {
              error = true;
            }

            switch (_activeStep) {
              case 2:
                if (key2.currentState!.validate()) {
                  key2.currentState?.save();
                  error = true;
                  _activeStep++;
                } else {
                  error = false;
                }
            }
        }
    }
  }
}
