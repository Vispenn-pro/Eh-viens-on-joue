import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../entities/cat_entity.dart';
import '../../entities/fact_entity.dart';
import '../../main.dart';

class QueryResult extends StatefulWidget {
  const QueryResult({Key? key}) : super(key: key);

  @override
  State<QueryResult> createState() => _QueryResultState();
}

class _QueryResultState extends State<QueryResult> {
  @override
  Widget build(BuildContext context) {
    final appState = context.watch<MyAppState>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FutureBuilder<CatEntity>(
          future: appState.randomCat,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: NetworkImage('https://cataas.com/${snapshot.data!.url}'),
                  height: MediaQuery.of(context).size.height * (40 / 100),
                  width: MediaQuery.of(context).size.width * (75 / 100),
                ),
              );
            } else if (snapshot.hasError) {
              return Text('[ERROR] : ${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
        FutureBuilder<FactEntity>(
          future: appState.randomFact,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * (75 / 100),
                  child: Text(
                    snapshot.data!.fact,
                    style: const TextStyle(
                      fontSize: 18
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Text('[ERROR] : ${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ],
    );
  }
}
