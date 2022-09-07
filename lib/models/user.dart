String usersTable = 'users';

class UserFields {
  static final String id = '_id';
  static final String username = 'username';
  static final String pin = 'pin';

  static final List<String> value = [
    id,
    username,
    pin,
  ];
}

class User {
  final int? id;
  final String? username;
  final String? pin;

  User({
    this.id,
    required this.username,
    required this.pin,
  });

  User copy({
    int? id,
    String? username,
    String? pin,
  }) =>
      User(
          id: id ?? this.id,
          username: username ?? this.username,
          pin: pin ?? this.pin);

  Map<String, Object?> toJson() => {
        UserFields.id: id,
        UserFields.username: username,
        UserFields.pin: pin,
      };

  static User fromJson(Map<String, Object?> json) => User(
        id: json[UserFields.id] as int?,
        username: json[UserFields.username] as String,
        pin: json[UserFields.pin] as String,
      );
}
