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

import 'user.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'user.pbenum.dart';

class UserAccount extends $pb.GeneratedMessage {
  factory UserAccount({
    $core.String? guid,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? phoneNumber,
    $core.String? username,
    UserAccountType? accountType,
    UserPropertyOwnershipType? ownershipType,
  }) {
    final result = create();
    if (guid != null) result.guid = guid;
    if (firstName != null) result.firstName = firstName;
    if (lastName != null) result.lastName = lastName;
    if (phoneNumber != null) result.phoneNumber = phoneNumber;
    if (username != null) result.username = username;
    if (accountType != null) result.accountType = accountType;
    if (ownershipType != null) result.ownershipType = ownershipType;
    return result;
  }

  UserAccount._();

  factory UserAccount.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UserAccount.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserAccount', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'guid')
    ..aOS(2, _omitFieldNames ? '' : 'firstName')
    ..aOS(3, _omitFieldNames ? '' : 'lastName')
    ..aOS(4, _omitFieldNames ? '' : 'phoneNumber')
    ..aOS(5, _omitFieldNames ? '' : 'username')
    ..e<UserAccountType>(6, _omitFieldNames ? '' : 'accountType', $pb.PbFieldType.OE, defaultOrMaker: UserAccountType.USER_ACCOUNT_TYPE_UNSPECIFIED, valueOf: UserAccountType.valueOf, enumValues: UserAccountType.values)
    ..e<UserPropertyOwnershipType>(7, _omitFieldNames ? '' : 'ownershipType', $pb.PbFieldType.OE, defaultOrMaker: UserPropertyOwnershipType.USER_PROP_OWNERSHIP_TYPE_UNSPECIFIED, valueOf: UserPropertyOwnershipType.valueOf, enumValues: UserPropertyOwnershipType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserAccount clone() => UserAccount()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserAccount copyWith(void Function(UserAccount) updates) => super.copyWith((message) => updates(message as UserAccount)) as UserAccount;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserAccount create() => UserAccount._();
  @$core.override
  UserAccount createEmptyInstance() => create();
  static $pb.PbList<UserAccount> createRepeated() => $pb.PbList<UserAccount>();
  @$core.pragma('dart2js:noInline')
  static UserAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAccount>(create);
  static UserAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get guid => $_getSZ(0);
  @$pb.TagNumber(1)
  set guid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get phoneNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set phoneNumber($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPhoneNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoneNumber() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get username => $_getSZ(4);
  @$pb.TagNumber(5)
  set username($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUsername() => $_has(4);
  @$pb.TagNumber(5)
  void clearUsername() => $_clearField(5);

  @$pb.TagNumber(6)
  UserAccountType get accountType => $_getN(5);
  @$pb.TagNumber(6)
  set accountType(UserAccountType value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAccountType() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccountType() => $_clearField(6);

  @$pb.TagNumber(7)
  UserPropertyOwnershipType get ownershipType => $_getN(6);
  @$pb.TagNumber(7)
  set ownershipType(UserPropertyOwnershipType value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasOwnershipType() => $_has(6);
  @$pb.TagNumber(7)
  void clearOwnershipType() => $_clearField(7);
}

class UserStringRequest extends $pb.GeneratedMessage {
  factory UserStringRequest({
    $core.String? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  UserStringRequest._();

  factory UserStringRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UserStringRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserStringRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserStringRequest clone() => UserStringRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserStringRequest copyWith(void Function(UserStringRequest) updates) => super.copyWith((message) => updates(message as UserStringRequest)) as UserStringRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserStringRequest create() => UserStringRequest._();
  @$core.override
  UserStringRequest createEmptyInstance() => create();
  static $pb.PbList<UserStringRequest> createRepeated() => $pb.PbList<UserStringRequest>();
  @$core.pragma('dart2js:noInline')
  static UserStringRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserStringRequest>(create);
  static UserStringRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
