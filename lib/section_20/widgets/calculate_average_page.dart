import 'package:flutter/material.dart';
import 'package:flutter_training/section_20/constants/app_constants.dart';
import 'package:flutter_training/section_20/data/data_helper.dart';
import 'package:flutter_training/section_20/model/lesson.dart';
import 'package:flutter_training/section_20/widgets/lesson_list.dart';
import 'package:flutter_training/section_20/widgets/show_average.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculateAveragePage extends StatefulWidget {
  const CalculateAveragePage({super.key});

  @override
  State<CalculateAveragePage> createState() => _CalculateAveragePageState();
}

class _CalculateAveragePageState extends State<CalculateAveragePage> {
  var formKey = GlobalKey<FormState>();
  double selectedValue = 4;
  double selectedCredit = 4;

  String enteredNameOfLesson='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(Constants.titleText, style: Constants.titleStyle),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //form
          Row(
            children: [
              Expanded(
                flex: 2,
                child: _buildForm(),
              ),
              Expanded(
                flex: 1,
                child: ShowAverage(average: DataHelper.calculateGPA(), classCount: DataHelper.allAddLessons.length),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: LessonList(
              onMyDismiss: (index){
                DataHelper.allAddLessons.removeAt(index);
                setState(() {

                });

              },
            ),
          )
          //List
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 8), child:  _buildTextFormField(),),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: _buildResultAlphapet(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: _buildCredits(),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      IconButton(
                       // onPressed:(){},
                     onPressed: _addAndCalculateAverageofLesson,
                        icon: Icon(Icons.arrow_forward_ios_sharp),
                        color: Constants.primaryColor,
                        iconSize: 30,
                      ),
                      Text(
                        "Calculate My GPA",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildTextFormField() {
    return TextFormField(
      onSaved: (value){
        setState(() {
          enteredNameOfLesson = value!;
        });
      },
      validator: (s){
        if (s!.length <= 0) {
          return 'Please enter the lesson name';
        } else
          return null;
      },
      decoration: InputDecoration(
        hintText: 'Enter the class name',
        border: OutlineInputBorder(borderRadius: Constants.borderRadius, borderSide: BorderSide.none),
        filled: true,
        fillColor: Constants.primaryColor.shade100.withOpacity(0.3),
      ),
    );
  }

  _buildResultAlphapet() {
    return Container(
      padding: Constants.dropDownPadding,
      decoration: BoxDecoration(
        color: Constants.primaryColor.shade100.withOpacity(0.3),
        borderRadius: Constants.borderRadius,
      ),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Constants.primaryColor.shade200,
        value: selectedValue,
        items: DataHelper.allClassResultAlphapet(),
        onChanged: (newvalue) {
          setState(() {
            selectedValue = newvalue!;
          });
        },
        underline: Container(),
      ),
    );
  }

  _buildCredits() {
    return Container(
      padding: Constants.dropDownPadding,
      decoration: BoxDecoration(
        color: Constants.primaryColor.shade100.withOpacity(0.3),
        borderRadius: Constants.borderRadius,
      ),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Constants.primaryColor.shade200,
        value: selectedCredit,
        items: DataHelper.allClassCredits(),
        onChanged: (newvalue) {
          setState(() {
            selectedCredit = newvalue!;
          });
        },
        underline: Container(),
      ),
    );
  }

  void _addAndCalculateAverageofLesson() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var addLesson = Lesson(enteredNameOfLesson, selectedValue, selectedCredit);
      DataHelper.addLesson(addLesson);
      print(addLesson);
      setState(() {
      });
    }
  }
}
