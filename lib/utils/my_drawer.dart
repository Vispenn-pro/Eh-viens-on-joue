import 'package:flutter/material.dart';
import 'package:evoj/routes/routes.dart';
import 'package:evoj/utils/my_logo.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: MyLogo(height: 72, width: 72, fontSize: 20,),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, Routes.home);
            },
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
          const Divider(thickness: 2),
          ListTile(
            leading: const Icon(Icons.pets),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, Routes.randomCats);
            },
            title: const Text(
              'Random cats',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
          const Divider(thickness: 2),
          ListTile(
            leading: const Icon(Icons.back_hand_outlined),
            onTap: () => Navigator.pop(context),
            title: const Text(
              'Phasmophobia helper',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            enabled: false,
          ),
          const Divider(thickness: 2),
          ListTile(
            leading: const Icon(Icons.sports_soccer),
            onTap: () => Navigator.pop(context),
            title: const Text(
              'Rocket League shop',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            enabled: false,
          ),
          const Divider(thickness: 2),
          ListTile(
            leading: const Icon(Icons.query_stats),
            onTap: () => Navigator.pop(context),
            title: const Text(
              'Rocket League rank',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            enabled: false,
          ),
        ],
      ),
    );
  }
}
