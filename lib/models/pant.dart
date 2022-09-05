String pantsTable = 'pants';

class PantFields {
  static final String id = '_id';
  static final String customerName = 'customerName';
  static final String customerNumber = 'customerNumber';
  static final String isFav = 'isFav';
  static final String body = 'body';
  static final String waist = 'waist';
  static final String tight = 'tight';
  static final String length = 'length';
  static final String bottom = 'bottom';
  static final String createdAt = 'createdAt';

  static final List<String> value = [
    id,
    isFav,
    customerName,
    customerNumber,
    body,
    waist,
    tight,
    length,
    bottom,
    createdAt,
  ];
}

class Pant {
  final int? id;
  final String? customerName;
  final String? customerNumber;
  final String? body;
  final String? waist;
  final String? tight;
  final String? length;
  final String? bottom;
  final bool? isFav;
  final DateTime? createdAt;

  Pant({
    this.id,
    required this.customerName,
    required this.customerNumber,
    required this.body,
    required this.waist,
    required this.tight,
    required this.length,
    required this.bottom,
    required this.createdAt,
    required this.isFav,
  });
}
