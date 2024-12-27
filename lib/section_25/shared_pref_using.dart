import 'package:flutter/material.dart';
import 'package:flutter_training/section_25/main25.dart';
import 'package:flutter_training/section_25/model/my_models.dart';
import 'package:flutter_training/section_25/services/file_storage.dart';
import 'package:flutter_training/section_25/services/local_stroga_services.dart';
import 'package:flutter_training/section_25/services/secure_storage.dart';
import 'package:flutter_training/section_25/services/shared_pref_service.dart';


class SharedPrefUsing extends StatefulWidget {
  const SharedPrefUsing({super.key});

  @override
  State<SharedPrefUsing> createState() => _SharedPrefUsingState();
}

class _SharedPrefUsingState extends State<SharedPrefUsing> {
  var _selectedGender = Gender.WOMEN;
  var _selectedColors=<String>[];
   bool _isStudent=false ;
   final TextEditingController _nameController= TextEditingController();
   final LocalStorageService _preferenceService = locator<LocalStorageService>();



   @override
  void initState() {
    super.initState();
    _readValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPreference Using'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Enter Name'),
            ),
          ),
          for(var gender  in Gender.values) _buildRadioListTiles(gender.name, gender),


          for(var color  in MyColors.values) _buildCheckboxListTile(color),

          SwitchListTile(title:const Text('Are You Student?'),value: _isStudent, onChanged: (value){
            setState(() {
              _isStudent=value;
            });
          }),
          Container(
            decoration: BoxDecoration(
              color: Colors.white, // Add background color
              borderRadius: BorderRadius.circular(12), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.5), // Shadow color with opacity
                  spreadRadius: 2, // Spread of the shadow
                  blurRadius: 8, // Blur effect
                  offset: Offset(2, 4), // Offset the shadow
                ),
              ],
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Button padding
                backgroundColor: Colors.red, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Rounded button corners
                ),
              ),
              onPressed: (){
                var _userInformation = UserInformation(_nameController.text, _selectedGender, _selectedColors, _isStudent);
                _preferenceService.savedValues(_userInformation);
              },
              child: Text(
                'Save',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Button text style
              ),
            ),
          )




        ],
      ),
    );
  }

  Widget _buildRadioListTiles(String title, Gender gender){
    return RadioListTile(
        title: Text(title),
        value: gender,
        groupValue: _selectedGender,
        onChanged: (selectedGender) {
          setState(() {
            _selectedGender = selectedGender!;
            debugPrint(_selectedGender.name);
          });
        });
  }

  Widget _buildCheckboxListTile(MyColors myColors){
  return CheckboxListTile(title: Text(myColors.name), value: _selectedColors.contains(myColors.name), onChanged: (value){
      if (value == false) {
        _selectedColors.remove(myColors.name);
      }  else if (value == true) {
        _selectedColors.add(myColors.name);
      }
      setState(() {
        print(_selectedColors.toString());
      });
    });
  }

  void _readValues()async{
     var info= await _preferenceService.readValues();

     _nameController.text=info.name;
     _isStudent=info.isStudent;
     _selectedColors=info.colors;
     _selectedGender=info.gender;
     setState(() {

     });
  }

}


