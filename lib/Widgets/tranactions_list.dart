import 'package:chart_lesson/Models/transaction.dart';
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
      height: 500,
      child: ListView(
        children: Transaction.getMock()
            .map(
              (transaction) => Container(
                margin: EdgeInsets.symmetric(vertical: 2.5, horizontal: 5),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(7.5),
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            border: Border.all(
                              width: 2,
                              color: Colors.purple,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            transaction.count.toString() + "руб.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        VerticalDivider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Divider(
                              height: 5,
                            ),
                            Text(
                              transaction.date,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
