class User {
  const User({
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    this.email,
  });

  final String uid;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String? email;
}
