import 'package:chart_lesson/Widgets/chart_element.dart';
import 'package:flutter/material.dart';

class ChartsList extends StatelessWidget {
  ChartsList({Key? key});
//   List<Map<String,dynamic>> get groupedTransactionsValues => List.generate(
//   7,
//   (index) {
//     final weekDay =Datetime.now().subtract(
//       Duration (days: index)
//     );
//     var totalSum = 0.0;
//     for (var transaction.date.day == weekDay.day &&
//     transaction.date.month ==weekDay.month &&
//     transaction.date.year == weekDay.year){
//       totalSum += transaction.count;

//     };
//   };

// return {
//     'day' :DateFormat.E('ru_RU').format(weekDaay),
//     'amaunt':totalSum
//   };
//   };
//   ).reversed.total();

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
      var DateFormat;
      return {
        'day': DateFormat.E('ru_RU').format(weekDay),
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

  // get transactions => null;

  // get DateFormat => null;

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
