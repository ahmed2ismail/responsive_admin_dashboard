class TransactionHistoryItemModel {
  final String title, date, amount;
  final TransactionType type;

  const TransactionHistoryItemModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.type,
  });
}

enum TransactionType { 
  withdrawal, // سحب
  deposit     // إيداع
}