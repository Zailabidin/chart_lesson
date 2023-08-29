import 'package:chart_lesson/Widgets/chart_element.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class ChartsList extends StatefulWidget {
  ChartsList({Key? key});

  @override
  State<ChartsList> createState() => _ChartsListState();
}

class _ChartsListState extends State<ChartsList> {
  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
  }

  List<Map<String, dynamic>> get groupedTransactionsValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      var totalSum = 0.0;
      for (var transaction in transactions) {
        if (transaction['date'].day == weekDay.day &&
            transaction['date'].month == weekDay.month &&
            transaction['date'].year == weekDay.year) {
          totalSum += transaction['count'];
        }
      }

      return {
        'day': DateFormat.E().format(weekDay),
        'amount': totalSum,
      };
    }).reversed.toList();
  }

  // Ваши данные о транзакциях
  List<Map<String, dynamic>> transactions = [
    {'date': DateTime(2023, 8, 20), 'count': 150.0},
    {'date': DateTime(2023, 8, 22), 'count': 200.0},
    // Добавьте остальные транзакции
  ];

  double getTotalSpending(
      List<Map<String, dynamic>> groupedTransactionsValues) {
    double totalSpending = groupedTransactionsValues.fold(
      0.0,
      (double sum, Map<String, dynamic> element) => sum += element['amount'],
    );
    return totalSpending;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: groupedTransactionsValues
                .map((date) => ChartElement(
                    title: date['day'],
                    count: date['amount'],
                    procentCount: 0.1))
                .toList(),
          ),
        ),
      ),
    );
  }
}

// class Transaction {
//   final DateTime date;
//   final double count;

//   Transaction(this.date, this.count);
// }

// List<Transaction> transactions = [
//   Transaction(DateTime(2023, 8, 20), 150.0),
//   Transaction(DateTime(2023, 8, 22), 200.0),
//   // Add more transactions here
// ];
