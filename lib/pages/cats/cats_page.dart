import 'package:flutter/material.dart';
import 'package:evoj/utils/my_drawer.dart';

import '../../utils/cats/random_cats_logo.dart';
import '../../utils/cats/query_results.dart';
import '../../utils/cats/random_button.dart';

class CatsPage extends StatefulWidget {
  static const String routeName = '/catsPage';

  const CatsPage({Key? key}) : super(key: key);

  @override
  State<CatsPage> createState() => _CatsPageState();
}

class _CatsPageState extends State<CatsPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context){
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * (15 / 100),
                  child: const Logo()
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * (65 / 100),
                  child: const QueryResult()
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * (15 / 100),
                  child: const SearchBar()
              ),
            ],
          ),
        ],
      )
    );
  }
}
