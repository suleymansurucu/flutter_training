import 'package:flutter/material.dart';
import 'package:flutter_training/section_25/services/local_stroga_services.dart';
import 'package:flutter_training/section_25/services/secure_storage.dart';
import 'package:flutter_training/section_25/services/shared_pref_service.dart';
import 'package:flutter_training/section_25/shared_pref_using.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
void setup(){
    locator.registerSingleton<LocalStorageService>(SharedPreferenceService());
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const MyHomePage25());
}

class MyHomePage25 extends StatelessWidget {
  const MyHomePage25({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Reference Training',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference Using'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SharedPrefUsing()),
            );
          },
          child: Text('Next To Page'),
        ),
      ),
    );
  }
}


