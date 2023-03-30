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

  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 120,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return const Center(
                  child: MyLogo(height: 194, width: 194, fontSize: 32,),
                );
              },
              childCount: 1
            ),
          ),
        ],
      ),
    );
  }
}
