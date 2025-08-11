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

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserAccountType extends $pb.ProtobufEnum {
  static const UserAccountType USER_ACCOUNT_TYPE_UNSPECIFIED = UserAccountType._(0, _omitEnumNames ? '' : 'USER_ACCOUNT_TYPE_UNSPECIFIED');
  static const UserAccountType USER_ACCOUNT_TYPE_PROPERTY_OWNER = UserAccountType._(1, _omitEnumNames ? '' : 'USER_ACCOUNT_TYPE_PROPERTY_OWNER');
  static const UserAccountType USER_ACCOUNT_TYPE_REVENUE_OFFICER = UserAccountType._(2, _omitEnumNames ? '' : 'USER_ACCOUNT_TYPE_REVENUE_OFFICER');

  static const $core.List<UserAccountType> values = <UserAccountType> [
    USER_ACCOUNT_TYPE_UNSPECIFIED,
    USER_ACCOUNT_TYPE_PROPERTY_OWNER,
    USER_ACCOUNT_TYPE_REVENUE_OFFICER,
  ];

  static final $core.List<UserAccountType?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 2);
  static UserAccountType? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const UserAccountType._(super.value, super.name);
}

class UserPropertyOwnershipType extends $pb.ProtobufEnum {
  static const UserPropertyOwnershipType USER_PROP_OWNERSHIP_TYPE_UNSPECIFIED = UserPropertyOwnershipType._(0, _omitEnumNames ? '' : 'USER_PROP_OWNERSHIP_TYPE_UNSPECIFIED');
  static const UserPropertyOwnershipType USER_PROP_OWNERSHIP_TYPE_INDIVIDUAL = UserPropertyOwnershipType._(1, _omitEnumNames ? '' : 'USER_PROP_OWNERSHIP_TYPE_INDIVIDUAL');
  static const UserPropertyOwnershipType USER_PROP_OWNERSHIP_TYPE_BUSINESS = UserPropertyOwnershipType._(2, _omitEnumNames ? '' : 'USER_PROP_OWNERSHIP_TYPE_BUSINESS');

  static const $core.List<UserPropertyOwnershipType> values = <UserPropertyOwnershipType> [
    USER_PROP_OWNERSHIP_TYPE_UNSPECIFIED,
    USER_PROP_OWNERSHIP_TYPE_INDIVIDUAL,
    USER_PROP_OWNERSHIP_TYPE_BUSINESS,
  ];

  static final $core.List<UserPropertyOwnershipType?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 2);
  static UserPropertyOwnershipType? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const UserPropertyOwnershipType._(super.value, super.name);
}


const $core.bool _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
