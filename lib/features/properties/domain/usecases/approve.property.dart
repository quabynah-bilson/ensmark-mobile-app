import 'dart:async';

import 'package:api_utils/api_utils.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/features/properties/domain/repositories/property.dart';

part 'approve.property.mapper.dart';

@MappableClass()
class ApprovePropertyParams with ApprovePropertyParamsMappable {
  final String guid;

  const ApprovePropertyParams({required this.guid});
}

@lazySingleton
class ApproveProperty implements CompletableUseCase<ApprovePropertyParams> {
  final PropertyRepository _repo;

  const ApproveProperty(this._repo);

  @override
  FutureOr<UseCaseResult<void>> call(ApprovePropertyParams params) async {
    final result = await _repo.approveProperty(params.guid);
    return result.fold((l) => UseCaseResult.error(l.reason), (r) => UseCaseResult.success(r));
  }
}
