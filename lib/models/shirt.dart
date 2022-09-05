String shirtsTable = 'shirts';

class ShirtFields {
  static final String id = '_id';
  static final String customerName = 'customerName';
  static final String customerNumber = 'customerNumber';
  static final String isFav = 'isFav';
  static final String body = 'body';
  static final String sleeve = 'sleeve';
  static final String chest = 'chest';
  static final String neck = 'neck';
  static final String shoulder = 'shoulder';
  static final String createdAt = 'createdAt';

  static final List<String> value = [
    id,
    isFav,
    customerName,
    customerNumber,
    body,
    sleeve,
    chest,
    neck,
    shoulder,
    createdAt,
  ];
}

class Shirt {
  final int? id;
  final String? customerName;
  final String? customerNumber;
  final String? body;
  final String? sleeve;
  final String? chest;
  final String? neck;
  final String? shoulder;
  final bool? isFav;
  final DateTime? createdAt;

  Shirt({
    this.id,
    required this.customerName,
    required this.customerNumber,
    required this.body,
    required this.sleeve,
    required this.chest,
    required this.neck,
    required this.shoulder,
    required this.createdAt,
    required this.isFav,
  });
}
