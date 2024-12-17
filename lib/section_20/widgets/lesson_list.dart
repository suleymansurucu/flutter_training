import 'package:flutter/material.dart';
import 'package:flutter_training/section_16/card_list.dart';
import 'package:flutter_training/section_20/constants/app_constants.dart';
import 'package:flutter_training/section_20/data/data_helper.dart';

class LessonList extends StatelessWidget {

  final Function onMyDismiss;
  const LessonList({required this.onMyDismiss, super.key});

  @override
  Widget build(BuildContext context) {
    return DataHelper.allAddLessons.length > 0 ? ListView.builder(itemCount:DataHelper.allAddLessons.length, itemBuilder: (context, index){
      return  Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.startToEnd,
        onDismissed: (a){
          onMyDismiss(index);
        },
        child: Padding(
          padding: EdgeInsets.all(2),
          child: Card(
            child: ListTile(
              title: Text(DataHelper.allAddLessons[index].nameOfLesson),
              leading: CircleAvatar(
                backgroundColor: Constants.primaryColor,
                child: Text((DataHelper.allAddLessons[index].valueOfAlhapet * DataHelper.allAddLessons[index].valueOfCredits).toStringAsFixed(0), style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
              ),
              subtitle: Text("${DataHelper.allAddLessons[index].valueOfCredits} Credit, ${DataHelper.allAddLessons[index].valueOfAlhapet} exam score"),

            ),
          ),
        ),
      );
    }): Container(
      child: Center(
        child: Text('Please enter your lesson and exam scores', style: Constants.titleStyle,),
      ),
    );;
  }
}
