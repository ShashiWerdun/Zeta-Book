class Business {
  String name;
  String category;
  String phone;
  String address;

  Business({
    required this.name,
    required this.category,
    required this.phone,
    required this.address,
  });
}

class Customer {
  String name;
  String phone;
  String address;

  Customer({
    required this.name,
    required this.address,
    required this.phone,
  });
}

class Transaction {
  DateTime timestamp;
  String note;
  bool outgoing;
  double amount;

  Transaction(
      {required this.timestamp,
      required this.note,
      required this.outgoing,
      required this.amount});
}

List<Business> businessList = [
  Business(
      name: 'Ashok General Store',
      category: 'Retail Store',
      phone: '1234567890',
      address: 'Hyderguda, Hyderabad, Telangana'),
  Business(
      name: 'Z Gen Electronics',
      category: 'Electronics Store',
      phone: '1234567890',
      address: 'Abids, Hyderabad, Telangana'),
  Business(
      name: 'Chaitanya Startup',
      category: 'New Startup',
      phone: '1234567890',
      address: 'Silicon Valley, California, United States of America'),
  Business(
      name: 'ABCNO',
      category: 'DEF',
      phone: '1231231231',
      address: 'ADSLKFLAKDF'),
  Business(
      name: 'DEFLM',
      category: 'DEF',
      phone: '1231231231',
      address: 'ADSLKFLAKDF'),
  Business(
      name: 'GHIJK',
      category: 'DEF',
      phone: '1231231231',
      address: 'ADSLKFLAKDF'),
];
