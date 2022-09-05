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
}
