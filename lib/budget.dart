class Budget {
  String judul;
  int nominal;
  String jenis;
  DateTime date;
  static List<Budget> newBudget = [];

  Budget({
    required this.judul,
    required this.nominal,
    required this.jenis,
    required this.date,
  });
  static void tambahBudget({
    required judul,
    required nominal,
    required jenis,
    required date,
  }) {
    newBudget.add(Budget(
      judul: judul,
      nominal: nominal,
      jenis: jenis,
      date: date,
    ));
  }
}
