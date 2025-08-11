//
//  Generated code. Do not modify.
//  source: auth.proto
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

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGA'
    'IgASgJUghwYXNzd29yZA==');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'expires_at', '3': 3, '4': 1, '5': 3, '10': 'expiresAt'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEiEKDGFjY2Vzc190b2tlbhgBIAEoCVILYWNjZXNzVG9rZW4SIwoNcm'
    'VmcmVzaF90b2tlbhgCIAEoCVIMcmVmcmVzaFRva2VuEh0KCmV4cGlyZXNfYXQYAyABKANSCWV4'
    'cGlyZXNBdA==');

@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = {
  '1': 'RegisterRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'first_name', '3': 3, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 4, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'phone_number', '3': 5, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'owner_type', '3': 6, '4': 1, '5': 9, '10': 'ownerType'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlclJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3'
    'JkGAIgASgJUghwYXNzd29yZBIdCgpmaXJzdF9uYW1lGAMgASgJUglmaXJzdE5hbWUSGwoJbGFz'
    'dF9uYW1lGAQgASgJUghsYXN0TmFtZRIhCgxwaG9uZV9udW1iZXIYBSABKAlSC3Bob25lTnVtYm'
    'VyEh0KCm93bmVyX3R5cGUYBiABKAlSCW93bmVyVHlwZQ==');

@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse$json = {
  '1': 'RegisterResponse',
  '2': [
    {'1': 'user_guid', '3': 1, '4': 1, '5': 9, '10': 'userGuid'},
    {'1': 'access_token', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResponseDescriptor = $convert.base64Decode(
    'ChBSZWdpc3RlclJlc3BvbnNlEhsKCXVzZXJfZ3VpZBgBIAEoCVIIdXNlckd1aWQSIQoMYWNjZX'
    'NzX3Rva2VuGAIgASgJUgthY2Nlc3NUb2tlbhIjCg1yZWZyZXNoX3Rva2VuGAMgASgJUgxyZWZy'
    'ZXNoVG9rZW4=');

@$core.Deprecated('Use refreshTokenRequestDescriptor instead')
const RefreshTokenRequest$json = {
  '1': 'RefreshTokenRequest',
  '2': [
    {'1': 'refresh_token', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RefreshTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenRequestDescriptor = $convert.base64Decode(
    'ChNSZWZyZXNoVG9rZW5SZXF1ZXN0EiMKDXJlZnJlc2hfdG9rZW4YASABKAlSDHJlZnJlc2hUb2'
    'tlbg==');

@$core.Deprecated('Use refreshTokenResponseDescriptor instead')
const RefreshTokenResponse$json = {
  '1': 'RefreshTokenResponse',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'expires_at', '3': 3, '4': 1, '5': 3, '10': 'expiresAt'},
  ],
};

/// Descriptor for `RefreshTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenResponseDescriptor = $convert.base64Decode(
    'ChRSZWZyZXNoVG9rZW5SZXNwb25zZRIhCgxhY2Nlc3NfdG9rZW4YASABKAlSC2FjY2Vzc1Rva2'
    'VuEiMKDXJlZnJlc2hfdG9rZW4YAiABKAlSDHJlZnJlc2hUb2tlbhIdCgpleHBpcmVzX2F0GAMg'
    'ASgDUglleHBpcmVzQXQ=');

