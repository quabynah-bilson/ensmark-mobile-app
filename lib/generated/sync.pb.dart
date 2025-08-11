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

import 'sync.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'sync.pbenum.dart';

class AppSyncQueue extends $pb.GeneratedMessage {
  factory AppSyncQueue({
    $core.String? guid,
    $core.String? entity,
    $core.String? payload,
    $core.int? attemptCount,
    $core.String? idempotencyKey,
    AppSyncStatus? status,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final result = create();
    if (guid != null) result.guid = guid;
    if (entity != null) result.entity = entity;
    if (payload != null) result.payload = payload;
    if (attemptCount != null) result.attemptCount = attemptCount;
    if (idempotencyKey != null) result.idempotencyKey = idempotencyKey;
    if (status != null) result.status = status;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  AppSyncQueue._();

  factory AppSyncQueue.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AppSyncQueue.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppSyncQueue', package: const $pb.PackageName(_omitMessageNames ? '' : 'sync'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'guid')
    ..aOS(2, _omitFieldNames ? '' : 'entity')
    ..aOS(3, _omitFieldNames ? '' : 'payload')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'attemptCount', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'idempotencyKey')
    ..e<AppSyncStatus>(6, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: AppSyncStatus.APP_SYNC_STATUS_UNSPECIFIED, valueOf: AppSyncStatus.valueOf, enumValues: AppSyncStatus.values)
    ..aOS(7, _omitFieldNames ? '' : 'createdAt')
    ..aOS(8, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppSyncQueue clone() => AppSyncQueue()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppSyncQueue copyWith(void Function(AppSyncQueue) updates) => super.copyWith((message) => updates(message as AppSyncQueue)) as AppSyncQueue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppSyncQueue create() => AppSyncQueue._();
  @$core.override
  AppSyncQueue createEmptyInstance() => create();
  static $pb.PbList<AppSyncQueue> createRepeated() => $pb.PbList<AppSyncQueue>();
  @$core.pragma('dart2js:noInline')
  static AppSyncQueue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppSyncQueue>(create);
  static AppSyncQueue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get entity => $_getSZ(1);
  @$pb.TagNumber(2)
  set entity($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEntity() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntity() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get payload => $_getSZ(2);
  @$pb.TagNumber(3)
  set payload($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get attemptCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set attemptCount($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAttemptCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAttemptCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get idempotencyKey => $_getSZ(4);
  @$pb.TagNumber(5)
  set idempotencyKey($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIdempotencyKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearIdempotencyKey() => $_clearField(5);

  @$pb.TagNumber(6)
  AppSyncStatus get status => $_getN(5);
  @$pb.TagNumber(6)
  set status(AppSyncStatus value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get createdAt => $_getSZ(6);
  @$pb.TagNumber(7)
  set createdAt($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get updatedAt => $_getSZ(7);
  @$pb.TagNumber(8)
  set updatedAt($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => $_clearField(8);
}

class SyncEmpty extends $pb.GeneratedMessage {
  factory SyncEmpty() => create();

  SyncEmpty._();

  factory SyncEmpty.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SyncEmpty.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SyncEmpty', package: const $pb.PackageName(_omitMessageNames ? '' : 'sync'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SyncEmpty clone() => SyncEmpty()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SyncEmpty copyWith(void Function(SyncEmpty) updates) => super.copyWith((message) => updates(message as SyncEmpty)) as SyncEmpty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncEmpty create() => SyncEmpty._();
  @$core.override
  SyncEmpty createEmptyInstance() => create();
  static $pb.PbList<SyncEmpty> createRepeated() => $pb.PbList<SyncEmpty>();
  @$core.pragma('dart2js:noInline')
  static SyncEmpty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncEmpty>(create);
  static SyncEmpty? _defaultInstance;
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
