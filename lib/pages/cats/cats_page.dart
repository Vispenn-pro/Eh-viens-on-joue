import 'package:flutter/material.dart';
import 'package:evoj/utils/my_drawer.dart';

import '../../utils/cats/query_results.dart';
import '../../utils/cats/random_button.dart';

class CatsPage extends StatefulWidget {
  static const String routeName = '/catsPage';

  const CatsPage({Key? key}) : super(key: key);

  @override
  State<CatsPage> createState() => _CatsPageState();
}

class _CatsPageState extends State<CatsPage> {

  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context){
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
            flexibleSpace: const FlexibleSpaceBar(
              title: Text("Random cats", style: TextStyle(fontSize: 24)),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height * (70 / 100),
                        child: const QueryResult()
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * (10 / 100),
                        child: const RandomButton()
                    ),
                  ],
                );
              },
              childCount: 1
            ),
          ),
        ],
      )
    );
  }
}
