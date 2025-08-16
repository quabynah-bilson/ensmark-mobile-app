import 'package:dart_mappable/dart_mappable.dart';
import 'package:mobile/features/authentication/domain/entities/owner.type.dart';

part 'personal.info.mapper.dart';

@MappableClass()
class PersonalInfoState with PersonalInfoStateMappable {
  const PersonalInfoState({
    this.type = OwnerType.individual,
    this.username = '',
    this.phoneNumber = '',
    this.firstName = '',
    this.lastName = '',
    this.dateOfBirth,
  });

  @MappableField(key: 'type')
  final OwnerType type;
  final String username;
  final String phoneNumber;
  final String firstName;
  final String lastName;
  final DateTime? dateOfBirth;
}
