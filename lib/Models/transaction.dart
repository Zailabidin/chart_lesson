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
  static List<Transaction> getMock() {
    return [
      Transaction(name: "Крассовки", count: 2500, date: "19.08.2023"),
      Transaction(name: "Куртка", count: 5000, date: "17.08.2023"),
      Transaction(name: "Вода", count: 50, date: "19.08.2023"),
      Transaction(name: "Вода", count: 50, date: "19.08.2023"),
      Transaction(name: "Вода", count: 50, date: "19.08.2023"),
      Transaction(name: "Вода", count: 50, date: "19.08.2023"),
      Transaction(name: "Вода", count: 50, date: "19.08.2023"),
      Transaction(name: "Вода", count: 50, date: "19.08.2023"),
      Transaction(name: "Вода", count: 50, date: "19.08.2023"),
      Transaction(name: "Вода", count: 50, date: "19.08.2023"),
      Transaction(name: "Вода", count: 50, date: "19.08.2023"),
    ];
  }
}
