import 'package:chart_lesson/Bloc/tranaction_bloc.dart';
import 'package:chart_lesson/Models/transaction.dart';
import 'package:chart_lesson/Widgets/tranaction_element.dart';
import 'package:flutter/material.dart';

class TranactionsList extends StatefulWidget {
  const TranactionsList({super.key});

  @override
  State<TranactionsList> createState() => _TranactionsListState();
}

class _TranactionsListState extends State<TranactionsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, position) => TranactionElement(
            transaction: TranactionBloc().tranactions[position],
          ),
          itemCount: TranactionBloc().tranactions.length,
        ),
      ),
    );
  }
}
