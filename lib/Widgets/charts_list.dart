import 'package:chart_lesson/Widgets/chart_element.dart';
import 'package:flutter/material.dart';

class ChartsList extends StatelessWidget {
  const ChartsList({super.key});
  // List<Map<String,dynamic>> get groupedTransactionsValues => List.generatel
  // 7,
  // {index}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              ChartElement(
                title: 'пон',
                count: 300,
                procentCount: 0.6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
