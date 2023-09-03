// import 'package:chart_lesson/Bloc/transaction_bloc.dart';
// import 'package:chart_lesson/Models/transaction.dart';
import 'package:chart_lesson/Widgets/tranaction_element.dart';
import 'package:flutter/material.dart';

import '../Block/tranaction_bloc.dart';

class TranactionsList extends StatefulWidget {
  const TranactionsList({super.key});

  @override
  State<TranactionsList> createState() => _TransactionsListState();
}

class _TransactionsListState extends State<TranactionsList> {
  late Function callback;
  @override
  void initState() {
    super.initState();
    callback = () {
      setState(() {});
    };
    TransactionBloc().addCallBack(callback);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, position) => TranactionElement(
          transaction: TransactionBloc().transactions[position],
        ),
        itemCount: TransactionBloc().transactions.length,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    TransactionBloc().deleteCallBack(callback);
    super.dispose();
  }
}
