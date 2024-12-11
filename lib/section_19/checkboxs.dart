import 'package:flutter/material.dart';

void main() {
  runApp(const CheckboxsTraining());
}

class CheckboxsTraining extends StatelessWidget {
  const CheckboxsTraining({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CheckBox'),
          centerTitle: true,
        ),
        body: const FormBody(),
      ),
    );
  }
}

class FormBody extends StatefulWidget {
  const FormBody({super.key});

  @override
  State<FormBody> createState() => _FormBodyState();
}

class _FormBodyState extends State<FormBody> {
  bool checkBoxState = false; // Use a non-nullable bool for simplicity.
  String city = '';
  bool switchState = false;

  double sliverValue = 2;
  String selectedColor = 'red';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CheckboxListTile(
            value: checkBoxState,
            onChanged: (selected) {
              setState(() {
                checkBoxState = selected ?? false; // Update state with setState
              });
            },
            activeColor: Colors.red,
            title: const Text('CheckBox Title'),
            subtitle: const Text('Checkbox Subtitle'),
            secondary: const Icon(Icons.add),
          ),
          RadioListTile<String>(
            value: "Ankara",
            groupValue: city,
            onChanged: (value) {
              setState(() {
                city = value!;
                debugPrint(value);
              });
            },
            title: Text('Ankara'),
          ),
          RadioListTile<String>(
            value: "Istanbul",
            groupValue: city,
            onChanged: (value) {
              setState(() {
                city = value!;
                debugPrint(value);
              });
            },
            title: Text('Istanbul'),
          ),
          RadioListTile<String>(
            value: "Tekirdag",
            groupValue: city,
            onChanged: (value) {
              setState(() {
                city = value!;
                debugPrint(value);
              });
            },
            title: Text('Tekirdag'),
            subtitle: Text('Radio Subtitle'),
            secondary: Icon(Icons.add),
          ),
          SwitchListTile(
            value: switchState,
            onChanged: (value) {
              setState(() {
                switchState = value;
              });
            },
            title: Text("Switch Title"),
            subtitle: Text("SwitchSub Title"),
            secondary: Icon(Icons.add_circle),
          ),
          Slider(
              value: sliverValue,
              min: 1,
              max: 10,
              divisions: 20,
              label: sliverValue.toString(),
              onChanged: (newValue) {
                setState(() {
                  sliverValue = newValue;
                  print(sliverValue.toString());
                });
              }),
          DropdownButton<String>(
            items: [
              DropdownMenuItem(
                child: Row(
                  children: [
                    Container(width: 24,height: 24,color: Colors.red,margin: EdgeInsets.only(right: 10),),
                    Icon(Icons.add),
                    Text("red"),
                  ],
                ),
                value: 'red',
              ),
              DropdownMenuItem(
                child: Row(
                  children: [
                    Container(width: 24,height: 24,color: Colors.blue,margin: EdgeInsets.only(right: 10),),
                    Icon(Icons.add),
                    Text("blue"),
                  ],
                ),
                value: 'blue',
              ),
              DropdownMenuItem(
                child: Row(
                  children: [
                    Container(width: 24,height: 24,color: Colors.green,margin: EdgeInsets.only(right: 10),),
                    Icon(Icons.add),
                    Text("Green"),
                  ],
                ),
                value: 'green',
              ),
            ],
            onChanged: (newValue) {
              setState(() {
                selectedColor=newValue!;
                print(selectedColor);
              });

            },
            hint: Text('Can you choose please'),
            value: selectedColor,
          )
        ],
      ),
    );
  }
}
