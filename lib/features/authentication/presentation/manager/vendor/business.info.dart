import 'package:freezed_annotation/freezed_annotation.dart';

part 'business.info.freezed.dart';

@freezed
abstract class BusinessInfoState with _$BusinessInfoState {
  const factory BusinessInfoState({@Default('') String registrationNumber, DateTime? registrationDate}) =
      _BusinessInfoState;
}
