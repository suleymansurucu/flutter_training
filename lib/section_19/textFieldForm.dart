import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Textfieldform(),
    );
  }
}

class Textfieldform extends StatefulWidget {
  const Textfieldform({super.key});

  @override
  State<Textfieldform> createState() => _TextfieldformState();
}

class _TextfieldformState extends State<Textfieldform> {
  String _email='', _password='', _userName='';
  final _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextFormField Samples"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  initialValue: 'Suleyman Surucu',
                  decoration: InputDecoration(
                    errorStyle: TextStyle(color: Colors.red),
                    labelText: 'Username:',
                    hintText: 'Enter username please',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value){
                    _userName = value!;
                  },
                  validator: (value){
                    if (value!.length<4) {
                      return 'username minimum least 4 character';
                    }  else return null;

                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  initialValue: 'suleymansurucu95@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(color: Colors.red),
                    labelText: 'Email:',
                    hintText: 'Enter Email please',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value){
                    _email = value!;
                  },
                  validator: (value){
                    if(!EmailValidator.validate(value!)){
                      return 'Its not corretly email';
                    }else
                      return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  // initialValue: 'suleymansurucu95@gmail.com',
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(color: Colors.red),
                    labelText: 'Password:',
                    hintText: 'Enter Password please',
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value){
                    _password = value!;
                  },
                  validator: (value){
                    if(value!.length < 6){
                      return 'Password must be length minimum 6 character';
                    }else
                      return null;
                  },
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  bool _validate = _formKey.currentState!.validate();
                  if (_validate) {
                    _formKey.currentState!.save();
                    String result = 'usernma:$_userName\nemail:$_email,\npassword:$_password';
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result, style: TextStyle(fontSize: 24, color: Colors.orange),),));
                  }

                }, child: Text('Submit')),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
