class Transaction {
  late int id;
  String name;
  double count;
  String date;

  static int allID = 0;

  Transaction({
    required this.name,
    required this.count,
    required this.date,
  }) {
    id = allID++;
  }
}
