import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:evoj/entities/cat_entity.dart';
import 'package:evoj/pages/cats/cats_page.dart';
import 'package:evoj/pages/home_page.dart';
import 'package:evoj/routes/routes.dart';
import 'package:evoj/utils/cats/get_random_cat.dart';
import 'package:evoj/utils/cats/get_random_fact.dart';

import 'entities/fact_entity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Eh viens on joue',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black87,

        ),
        darkTheme: ThemeData.dark(),
        home: const HomePage(),
        routes: <String, WidgetBuilder>{
          Routes.home: (BuildContext context) => const HomePage(),
          Routes.randomCats: (BuildContext context) => const CatsPage()
        },
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  double firstPartSize = 45;
  double secondPartSize = 55;
  bool isVisible = true;
  Alignment alignment = Alignment.center;
  late Future<FactEntity> randomFact = getRandomFact();
  late Future<CatEntity> randomCat = getRandomCat();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void search(){
    randomFact = getRandomFact();
    randomCat = getRandomCat();
    notifyListeners();
  }
}
