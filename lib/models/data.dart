class Business {
  String? businessName;
  String? businessCategory;
}

class Customer extends Business {
  String? customerName;
  int? customerPhone;
}

class Transaction extends Customer {
  DateTime? dateTime;
  String? transactionNote;
  bool? outgoing;
  int? transactionAmount;
}
