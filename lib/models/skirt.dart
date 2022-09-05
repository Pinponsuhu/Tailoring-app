String skirtsTable = 'skirts';

class SkirtFields {
  static final String id = '_id';
  static final String customerName = 'customerName';
  static final String customerNumber = 'customerNumber';
  static final String isFav = 'isFav';
  static final String waist = 'waist';
  static final String hip = 'hip';
  static final String length = 'length';
  static final String body = 'body';
  static final String createdAt = 'createdAt';

  static final List<String> value = [
    id,
    isFav,
    customerName,
    customerNumber,
    body,
    createdAt,
    waist,
    hip,
    length,
  ];
}

class Skirt {
  final int? id;
  final String? customerName;
  final String? customerNumber;
  final String? body;
  final String? waist;
  final String? hip;
  final String? length;
  final bool? isFav;
  final DateTime? createdAt;

  Skirt({
    this.id,
    required this.customerName,
    required this.customerNumber,
    required this.body,
    required this.waist,
    required this.hip,
    required this.length,
    required this.createdAt,
    required this.isFav,
  });
}
