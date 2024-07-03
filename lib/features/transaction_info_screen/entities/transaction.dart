class Transaction {
  final String companyName;
  final String transactionNumber;
  final String date;
  final String status;
  final String amount;

  Transaction({
    required this.companyName,
    required this.transactionNumber,
    required this.date,
    required this.status,
    required this.amount,
  });
}