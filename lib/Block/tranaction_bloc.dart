import '../Models/transaction.dart';

class TransactionBloc {
  static TransactionBloc? _instance;
  TransactionBloc._internal();

  factory TransactionBloc() {
    _instance ??= TransactionBloc._internal();
    return _instance!;
  }
  final List<Transaction> _tranactions = [
    Transaction(name: "Крассовки", count: 2500, date: DateTime.now()),
    Transaction(name: "Куртка", count: 5000, date: DateTime.now()),
    Transaction(name: "Вода", count: 50, date: DateTime.now()),
  ];

  final List<Future> _callBacks = [];

  List<Transaction> get transactions => _tranactions;

  // get addTransaction => null;
  void Tranaction(Transaction transaction, {required String name}) {
    _tranactions.add(transaction);
    for (var element in _callBacks) {
      element;
    }
  }

  bool deleteTranaction(Transaction tranaction) {
    bool result = _tranactions.remove(tranaction);
    for (var element in _callBacks) {
      element;
    }
    return result;
  }

  void deleteCallBack(Function callback) => _callBacks.remove(callback);

  void addCallBack(Function callback) {}

  void addTransaction(Transaction transaction) => _tranactions.add(transaction);

  // void addCallBack(Null Function() param0) {}
}
