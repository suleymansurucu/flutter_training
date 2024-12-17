import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Suleyman Surucu'),
            accountEmail: const Text('suleymansurucu95@gmail.com'),
            currentAccountPicture:
            Image.network('https://picsum.photos/id/1/200/300'),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text('SS'),
              ),
              CircleAvatar(
                backgroundColor: Colors.yellowAccent,
                child: Text('AD'),
              ),
            ],
          ),

          Expanded(

            child: ListView(
              children: [
                const ListTile(leading: Icon(Icons.home),
                  title: Text('Home'),
                  trailing: Icon(Icons.chevron_right),),
                const ListTile(leading: Icon(Icons.call),
                  title: Text('Call'),
                  trailing: Icon(Icons.chevron_right),),
                const ListTile(leading: Icon(Icons.account_box),
                  title: Text('Profile'),
                  trailing: Icon(Icons.chevron_right),),
                const Divider(),
                InkWell(
                  onTap: (){},
                  splashColor: Colors.cyan,
                  child: const ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.chevron_right),),
                ),
                const AboutListTile(
                  applicationName: 'About List Tile Creater',
                  applicationIcon: Icon(Icons.import_contacts_outlined),
                  applicationVersion: '2.0',
                  applicationLegalese: null,
                  child: Text('About Us'),
                ),
              ],
            ),
          ),
        ],

      ),

    );
  }
}
