import 'package:chart_lesson/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ChartApp"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.red,
            child: Text("Charts"),
          ),
          Column(
            children: [
              Transaction(name: "Крассовки", count: 2500, date: "19.08.2023"),
              Transaction(name: "Куртка", count: 5000, date: "17.08.2023"),
              Transaction(name: "Вода", count: 50, date: "19.08.2023"),
            ]
                .map(
                  (transaction) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              transaction.count.toString() + "руб.",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          VerticalDivider(),
                          Column(
                            children: [
                              Text(transaction.name),
                              Text(transaction.date),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: const Icon(Icons.add),
      ),
    );
  }
}
