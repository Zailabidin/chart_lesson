import 'package:chart_lesson/Models/transaction.dart';

class TranactionBloc {
  static TranactionBloc? _instance;
  TranactionBloc._internal();

  factory TranactionBloc() {
    _instance ??= TranactionBloc._internal();
    return _instance!;
  }
  final List<Transaction> _tranactions = [
    Transaction(name: "Крассовки", count: 2500, date: "19.08.2023"),
    Transaction(name: "Куртка", count: 5000, date: "17.08.2023"),
    Transaction(name: "Вода", count: 50, date: "19.08.2023"),
  ];

  List<Transaction> get tranactions => _tranactions;
  void Tranaction(Transaction transaction) => _tranactions.add(transaction);

  bool deleteTranaction(Transaction transaction) =>
      _tranactions.remove(transaction);
}
