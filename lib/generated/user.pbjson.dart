//
//  Generated code. Do not modify.
//  source: user.proto
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

@$core.Deprecated('Use userAccountTypeDescriptor instead')
const UserAccountType$json = {
  '1': 'UserAccountType',
  '2': [
    {'1': 'USER_ACCOUNT_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'USER_ACCOUNT_TYPE_PROPERTY_OWNER', '2': 1},
    {'1': 'USER_ACCOUNT_TYPE_REVENUE_OFFICER', '2': 2},
  ],
};

/// Descriptor for `UserAccountType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userAccountTypeDescriptor = $convert.base64Decode(
    'Cg9Vc2VyQWNjb3VudFR5cGUSIQodVVNFUl9BQ0NPVU5UX1RZUEVfVU5TUEVDSUZJRUQQABIkCi'
    'BVU0VSX0FDQ09VTlRfVFlQRV9QUk9QRVJUWV9PV05FUhABEiUKIVVTRVJfQUNDT1VOVF9UWVBF'
    'X1JFVkVOVUVfT0ZGSUNFUhAC');

@$core.Deprecated('Use userPropertyOwnershipTypeDescriptor instead')
const UserPropertyOwnershipType$json = {
  '1': 'UserPropertyOwnershipType',
  '2': [
    {'1': 'USER_PROP_OWNERSHIP_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'USER_PROP_OWNERSHIP_TYPE_INDIVIDUAL', '2': 1},
    {'1': 'USER_PROP_OWNERSHIP_TYPE_BUSINESS', '2': 2},
  ],
};

/// Descriptor for `UserPropertyOwnershipType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userPropertyOwnershipTypeDescriptor = $convert.base64Decode(
    'ChlVc2VyUHJvcGVydHlPd25lcnNoaXBUeXBlEigKJFVTRVJfUFJPUF9PV05FUlNISVBfVFlQRV'
    '9VTlNQRUNJRklFRBAAEicKI1VTRVJfUFJPUF9PV05FUlNISVBfVFlQRV9JTkRJVklEVUFMEAES'
    'JQohVVNFUl9QUk9QX09XTkVSU0hJUF9UWVBFX0JVU0lORVNTEAI=');

@$core.Deprecated('Use userAccountDescriptor instead')
const UserAccount$json = {
  '1': 'UserAccount',
  '2': [
    {'1': 'guid', '3': 1, '4': 1, '5': 9, '10': 'guid'},
    {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'phone_number', '3': 4, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'username', '3': 5, '4': 1, '5': 9, '10': 'username'},
    {'1': 'account_type', '3': 6, '4': 1, '5': 14, '6': '.user.UserAccountType', '10': 'accountType'},
    {'1': 'ownership_type', '3': 7, '4': 1, '5': 14, '6': '.user.UserPropertyOwnershipType', '10': 'ownershipType'},
  ],
};

/// Descriptor for `UserAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAccountDescriptor = $convert.base64Decode(
    'CgtVc2VyQWNjb3VudBISCgRndWlkGAEgASgJUgRndWlkEh0KCmZpcnN0X25hbWUYAiABKAlSCW'
    'ZpcnN0TmFtZRIbCglsYXN0X25hbWUYAyABKAlSCGxhc3ROYW1lEiEKDHBob25lX251bWJlchgE'
    'IAEoCVILcGhvbmVOdW1iZXISGgoIdXNlcm5hbWUYBSABKAlSCHVzZXJuYW1lEjgKDGFjY291bn'
    'RfdHlwZRgGIAEoDjIVLnVzZXIuVXNlckFjY291bnRUeXBlUgthY2NvdW50VHlwZRJGCg5vd25l'
    'cnNoaXBfdHlwZRgHIAEoDjIfLnVzZXIuVXNlclByb3BlcnR5T3duZXJzaGlwVHlwZVINb3duZX'
    'JzaGlwVHlwZQ==');

@$core.Deprecated('Use userStringRequestDescriptor instead')
const UserStringRequest$json = {
  '1': 'UserStringRequest',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `UserStringRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userStringRequestDescriptor = $convert.base64Decode(
    'ChFVc2VyU3RyaW5nUmVxdWVzdBIUCgV2YWx1ZRgBIAEoCVIFdmFsdWU=');

