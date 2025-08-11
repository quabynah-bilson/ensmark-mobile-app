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

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use appSyncStatusDescriptor instead')
const AppSyncStatus$json = {
  '1': 'AppSyncStatus',
  '2': [
    {'1': 'APP_SYNC_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'APP_SYNC_STATUS_PENDING', '2': 1},
    {'1': 'APP_SYNC_STATUS_PROCESSING', '2': 2},
    {'1': 'APP_SYNC_STATUS_SYNCED', '2': 3},
    {'1': 'APP_SYNC_STATUS_FAILED', '2': 4},
  ],
};

/// Descriptor for `AppSyncStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List appSyncStatusDescriptor = $convert.base64Decode(
    'Cg1BcHBTeW5jU3RhdHVzEh8KG0FQUF9TWU5DX1NUQVRVU19VTlNQRUNJRklFRBAAEhsKF0FQUF'
    '9TWU5DX1NUQVRVU19QRU5ESU5HEAESHgoaQVBQX1NZTkNfU1RBVFVTX1BST0NFU1NJTkcQAhIa'
    'ChZBUFBfU1lOQ19TVEFUVVNfU1lOQ0VEEAMSGgoWQVBQX1NZTkNfU1RBVFVTX0ZBSUxFRBAE');

@$core.Deprecated('Use appSyncQueueDescriptor instead')
const AppSyncQueue$json = {
  '1': 'AppSyncQueue',
  '2': [
    {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    {'1': 'entity', '3': 2, '4': 1, '5': 9, '10': 'entity'},
    {'1': 'payload', '3': 3, '4': 1, '5': 9, '10': 'payload'},
    {'1': 'attempt_count', '3': 4, '4': 1, '5': 5, '10': 'attemptCount'},
    {'1': 'idempotency_key', '3': 5, '4': 1, '5': 9, '10': 'idempotencyKey'},
    {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.sync.AppSyncStatus', '10': 'status'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `AppSyncQueue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appSyncQueueDescriptor = $convert.base64Decode(
    'CgxBcHBTeW5jUXVldWUSEgoEZ3VpZBgBIAEoCVIEZ3VpZBIWCgZlbnRpdHkYAiABKAlSBmVudG'
    'l0eRIYCgdwYXlsb2FkGAMgASgJUgdwYXlsb2FkEiMKDWF0dGVtcHRfY291bnQYBCABKAVSDGF0'
    'dGVtcHRDb3VudBInCg9pZGVtcG90ZW5jeV9rZXkYBSABKAlSDmlkZW1wb3RlbmN5S2V5EisKBn'
    'N0YXR1cxgGIAEoDjITLnN5bmMuQXBwU3luY1N0YXR1c1IGc3RhdHVzEh0KCmNyZWF0ZWRfYXQY'
    'ByABKAlSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAggASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use syncEmptyDescriptor instead')
const SyncEmpty$json = {
  '1': 'SyncEmpty',
};

/// Descriptor for `SyncEmpty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncEmptyDescriptor = $convert.base64Decode(
    'CglTeW5jRW1wdHk=');

