import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Using'),
        bottom: myTabbar(),
      ),
      body: TabBarView(controller: tabController, children: [
        Container(
          color: Colors.green,
          child: const Center(
            child: Text(
              'TAB-1',
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          child: const Center(
            child: Text(
              'TAB-2',
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Container(
          color: Colors.yellowAccent,
          child: const Center(
            child: Text(
              'TAB-3',
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
      ]),
    );
  }

  TabBar myTabbar() {
    return TabBar(controller: tabController, tabs: const [
      Tab(
        icon: Icon(Icons.add),
        text: 'Tab-1',
      ),
      Tab(
        icon: Icon(Icons.account_box),
        text: 'Tab-2',
      ),
      Tab(
        icon: Icon(Icons.abc),
        text: 'Tab-3',
      ),
    ]);
  }
}
