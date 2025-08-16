enum OwnerType { individual, business }

extension OwnerTypeExtension on OwnerType {
  String get label => switch (this) {
    OwnerType.individual => 'Individual',
    OwnerType.business => 'Business',
  };
}
