import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/section_09/inheritance_via_override.dart';

import 'model/user_model.dart';

class RemoteApi extends StatefulWidget {
  const RemoteApi({super.key});

  @override
  State<RemoteApi> createState() => _RemoteApiState();
}

class _RemoteApiState extends State<RemoteApi> {


  Future<List<UserModel>> _getUserList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/users');
      List<UserModel> _userList = [];
      if (response.statusCode == 200) {
        _userList =
            (response.data as List).map((e) => UserModel.fromJson(e)).toList();
        debugPrint(_userList.length.toString());
      }
      return _userList;
    } catch (e) {
      return Future.error(e.toString());
    }
  }
  late Future<List<User>> _userList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userList=_getUserList() as Future<List<User>>;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remote Api with Dio'),
      ),
      body: Center(
        child: FutureBuilder<List<UserModel>>(
            future: _getUserList(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                debugPrint('Geldim');
                List<UserModel> userList = snapshot.data!;
                debugPrint(userList.length.toString());
                return ListView.builder(
                    itemCount: userList.length,
                    itemBuilder: (context, index) {
                      var user = userList[index];
                      return ListTile(
                        title: Text(user.email),
                        subtitle: Text(user.address.toString()),
                        leading: Text(user.id.toString()),
                      );
                    });
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
