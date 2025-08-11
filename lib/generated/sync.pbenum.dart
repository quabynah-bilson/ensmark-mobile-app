//
//  Generated code. Do not modify.
//  source: sync.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AppSyncStatus extends $pb.ProtobufEnum {
  static const AppSyncStatus APP_SYNC_STATUS_UNSPECIFIED = AppSyncStatus._(0, _omitEnumNames ? '' : 'APP_SYNC_STATUS_UNSPECIFIED');
  static const AppSyncStatus APP_SYNC_STATUS_PENDING = AppSyncStatus._(1, _omitEnumNames ? '' : 'APP_SYNC_STATUS_PENDING');
  static const AppSyncStatus APP_SYNC_STATUS_PROCESSING = AppSyncStatus._(2, _omitEnumNames ? '' : 'APP_SYNC_STATUS_PROCESSING');
  static const AppSyncStatus APP_SYNC_STATUS_SYNCED = AppSyncStatus._(3, _omitEnumNames ? '' : 'APP_SYNC_STATUS_SYNCED');
  static const AppSyncStatus APP_SYNC_STATUS_FAILED = AppSyncStatus._(4, _omitEnumNames ? '' : 'APP_SYNC_STATUS_FAILED');

  static const $core.List<AppSyncStatus> values = <AppSyncStatus> [
    APP_SYNC_STATUS_UNSPECIFIED,
    APP_SYNC_STATUS_PENDING,
    APP_SYNC_STATUS_PROCESSING,
    APP_SYNC_STATUS_SYNCED,
    APP_SYNC_STATUS_FAILED,
  ];

  static final $core.List<AppSyncStatus?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 4);
  static AppSyncStatus? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AppSyncStatus._(super.value, super.name);
}


const $core.bool _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
