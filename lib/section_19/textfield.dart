import 'package:flutter/material.dart';

void main() {
  runApp(const TextfieldTraining());
}

class TextfieldTraining extends StatelessWidget {
  const TextfieldTraining({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Create Form'),
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
  String _textFieldValue = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Enter your data:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          TextField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            autofocus: true,
            maxLines: 1, // Tek satır için optimize edildi.
            maxLength: 20,
            decoration: InputDecoration(
              labelText: "Enter a number",
              hintText: "Example: 123",
              border: OutlineInputBorder(),
            ),
            onChanged: (String value) {
              setState(() {
                _textFieldValue = value;
              });
              print(value); // Girilen metni konsola yazdırır.
            },
          ),
          const SizedBox(height: 20),
          Text(
            "You entered: $_textFieldValue",
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
