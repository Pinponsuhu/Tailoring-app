String capsTable = 'caps';

class CapFields {
  static final String id = '_id';
  static final String customerName = 'customerName';
  static final String customerNumber = 'customerNumber';
  static final String circumference = 'circumference';
  static final String capType = 'capType';
  static final String isFav = 'isFav';
  static final String createdAt = 'createdAt';

  static final List<String> value = [
    id,
    isFav,
    customerName,
    customerNumber,
    capType,
    createdAt,
    circumference
  ];
}

class Cap {
  final int? id;
  final String customerName;
  final String customerNumber;
  final String circumference;
  final String capType;
  final bool isFav;
  final DateTime createdAt;

  Cap({
    this.id,
    required this.customerName,
    required this.customerNumber,
    required this.circumference,
    required this.capType,
    required this.createdAt,
    required this.isFav,
  });

  Cap copy({
    int? id,
    String? customerName,
    String? customerNumber,
    String? circumference,
    String? capType,
    DateTime? createdAt,
    bool? isFav,
  }) =>
      Cap(
        id: id ?? this.id,
        customerName: customerName ?? this.customerName,
        customerNumber: customerNumber ?? this.customerName,
        circumference: circumference ?? this.circumference,
        capType: capType ?? this.capType,
        createdAt: createdAt ?? this.createdAt,
        isFav: isFav ?? this.isFav,
      );

  Map<String, Object?> toJson() => {
        CapFields.id: id,
        CapFields.customerName: customerName,
        CapFields.customerNumber: customerNumber,
        CapFields.circumference: circumference,
        CapFields.capType: capType,
        CapFields.createdAt: createdAt.toIso8601String(),
        CapFields.isFav: isFav ? 1 : 0,
      };

  static Cap fromJson(Map<String, Object?> json) => Cap(
        id: json[CapFields.id] as int?,
        customerName: json[CapFields.customerName] as String,
        customerNumber: json[CapFields.customerNumber] as String,
        circumference: json[CapFields.circumference] as String,
        capType: json[CapFields.capType] as String,
        createdAt: DateTime.parse(json[CapFields.createdAt] as String),
        isFav: json[CapFields.isFav] == 1,
      );
}
