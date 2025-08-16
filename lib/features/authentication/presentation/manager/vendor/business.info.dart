import 'package:dart_mappable/dart_mappable.dart';

part 'business.info.mapper.dart';

@MappableClass()
class BusinessInfoState with BusinessInfoStateMappable {
  const BusinessInfoState({this.registrationNumber = '', this.registrationDate});

  final String registrationNumber;
  final DateTime? registrationDate;
}
