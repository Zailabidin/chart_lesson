import 'package:chart_lesson/Block/tranaction_bloc.dart';
import 'package:chart_lesson/Models/transaction.dart';
import 'package:chart_lesson/Widgets/adding_form.dart';
import 'package:chart_lesson/Widgets/charts_list.dart';
import 'package:chart_lesson/Widgets/tranactions_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.purple,
              secondary: Colors.amber,
            ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
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
        title: const Text(
          "ChartApp",
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ChartsList(),
          TranactionsList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO: нужно вызвать форму добавление
          showModalBottomSheet(
            context: context,
            builder: (context) => AddingForm(),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
