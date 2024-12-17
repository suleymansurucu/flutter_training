import 'package:flutter/material.dart';
import 'package:flutter_training/section_21/ui_folder/custom_fontstyle.dart';
import 'package:flutter_training/section_21/ui_folder/drawer_menu.dart';
import 'package:flutter_training/section_21/ui_folder/home_page.dart';
import 'package:flutter_training/section_21/ui_folder/page_view.dart';
import 'package:flutter_training/section_21/ui_folder/search_page.dart';
import 'package:flutter_training/section_21/ui_folder/tab_page.dart';

main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme =
        ColorScheme.fromSeed(seedColor: Colors.blue);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Used Font Style for Text Font-style',
      theme: ThemeData(
        colorScheme: colorScheme,
        primarySwatch: Colors.red,
      ),
      home: HomeInside(),
    );
  }
}

class HomeInside extends StatefulWidget {
  const HomeInside({super.key});

  @override
  State<HomeInside> createState() => _HomeInsideState();
}

class _HomeInsideState extends State<HomeInside> {
  int selectedMenuItem = 0;
  late List<Widget> allPages;
  late HomePage homePage;
  late SearchPage searchPage;
  late PageViewExample pageView;

  var keyHomePage = PageStorageKey('key_home_page');
  var keySearch = PageStorageKey('key_search');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage = HomePage(key: keyHomePage);
    searchPage = SearchPage(key: keySearch);
    pageView = const PageViewExample();
    allPages = [homePage, searchPage, pageView];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        title: const Text(
          'Font Used Title',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      // body: const CustomFontstyle(),
      body: selectedMenuItem <= allPages.length - 1
          ? allPages[selectedMenuItem]
          : allPages[0],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Call',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Home',
              backgroundColor: Colors.tealAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profile',
              backgroundColor: Colors.brown),
        ],
        currentIndex: selectedMenuItem,
        onTap: (index) {
          setState(() {
            selectedMenuItem = index;
            if (index == 3) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const TabPage()))
                  .then((bb) {
                // selectedMenuItem = 0;
              });
            }
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
