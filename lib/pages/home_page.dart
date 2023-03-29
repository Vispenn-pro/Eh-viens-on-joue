import 'package:flutter/material.dart';
import 'package:evoj/utils/my_logo.dart';
import 'package:evoj/utils/my_drawer.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      body: Stack(
        children: [
          IconButton(
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            icon: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
          const Center(
            child: MyLogo(height: 194, width: 194, fontSize: 32,),
          )
        ],
      ),
    );
  }
}
