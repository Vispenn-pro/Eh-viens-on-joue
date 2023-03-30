import 'package:flutter/material.dart';
import "package:simple_icons/simple_icons.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:evoj/routes/routes.dart';
import 'package:evoj/utils/my_logo.dart';

final Uri _url = Uri.parse('https://github.com/Vispenn-pro/Eh-viens-on-joue');

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          Expanded(
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
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Random cats',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Get random cat facts and pictures',
                        style: TextStyle(color: Colors.white38, fontSize: 10, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ],
            ),
          ),
          Center(
            child: IconButton(
              icon: const Icon(SimpleIcons.github),
              onPressed: _launchUrl,
            )
          )
        ],
      ),
    );
  }


  Future<void> _launchUrl() async{
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
