import 'package:chart_lesson/Block/tranaction_bloc.dart';
import 'package:chart_lesson/Models/transaction.dart';
import 'package:flutter/material.dart';

class AddingForm extends StatelessWidget {
  AddingForm({super.key});

  TextEditingController _titleControler = TextEditingController();
  TextEditingController _amountControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Называния Транзакция'),
          controller: _titleControler,
        ),
        const Divider(
          color: Colors.transparent,
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Сумма Транзакция'),
          controller: _amountControler,
          keyboardType: TextInputType.numberWithOptions(
            decimal: true,
          ),
        ),
        const Divider(
          color: Colors.transparent,
        ),
        Row(
          children: [
            // DanePicker
          ],
        ),
        const Divider(
          color: Colors.transparent,
        ),
        ElevatedButton(
          onPressed: () {
            if (double.tryParse(_amountControler.text) == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Вы вывели некоретное число'),
                ),
              );
            }
            TransactionBloc().addTransaction(
              Transaction(
                name: 'Бутерброд',
                count: 180,
                date: DateTime.now(),
              ),
            );
            Navigator.pop(context);
          },
          child: const Text('Добавить'),
        )
      ],
    );
  }
}
