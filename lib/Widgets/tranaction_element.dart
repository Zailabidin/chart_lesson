import 'package:chart_lesson/Block/tranaction_bloc.dart';
import 'package:chart_lesson/Models/transaction.dart';
import 'package:flutter/material.dart';

class TranactionElement extends StatelessWidget {
  final Transaction transaction;
  TranactionElement({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.5, horizontal: 5),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                width: 110,
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.all(7.5),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    border: Border.all(
                      width: 2,
                      color: Colors.purple,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    transaction.count.toStringAsFixed(2) + "руб.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
              const VerticalDivider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.name,
                    style: const TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Divider(
                    height: 5,
                  ),
                  Text(
                    transaction.dateString,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              IconButton(
                onPressed: () {
                  TransactionBloc().deleteTranaction(transaction);
                },
                icon: Icon(
                  Icons.delete,
                  color: Theme.of(context).errorColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
