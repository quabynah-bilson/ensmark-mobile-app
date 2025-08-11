/// Defines the different types of user roles in the system
enum UserRole {
  /// Property owner role
  owner('Property Owner'),

  /// Revenue officer role
  officer('Revenue Officer');

  final String label;

  const UserRole(this.label);
}
