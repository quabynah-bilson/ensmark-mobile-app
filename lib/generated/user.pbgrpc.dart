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

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $3;

export 'user.pb.dart';

@$pb.GrpcServiceName('user.UserService')
class UserServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$getUserAccount = $grpc.ClientMethod<$3.UserStringRequest, $3.UserAccount>(
      '/user.UserService/GetUserAccount',
      ($3.UserStringRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UserAccount.fromBuffer(value));
  static final _$createUserAccount = $grpc.ClientMethod<$3.UserAccount, $3.UserAccount>(
      '/user.UserService/CreateUserAccount',
      ($3.UserAccount value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UserAccount.fromBuffer(value));

  UserServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseStream<$3.UserAccount> getUserAccount($3.UserStringRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getUserAccount, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$3.UserAccount> createUserAccount($3.UserAccount request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUserAccount, request, options: options);
  }
}

@$pb.GrpcServiceName('user.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.UserStringRequest, $3.UserAccount>(
        'GetUserAccount',
        getUserAccount_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.UserStringRequest.fromBuffer(value),
        ($3.UserAccount value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UserAccount, $3.UserAccount>(
        'CreateUserAccount',
        createUserAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UserAccount.fromBuffer(value),
        ($3.UserAccount value) => value.writeToBuffer()));
  }

  $async.Stream<$3.UserAccount> getUserAccount_Pre($grpc.ServiceCall $call, $async.Future<$3.UserStringRequest> $request) async* {
    yield* getUserAccount($call, await $request);
  }

  $async.Future<$3.UserAccount> createUserAccount_Pre($grpc.ServiceCall $call, $async.Future<$3.UserAccount> $request) async {
    return createUserAccount($call, await $request);
  }

  $async.Stream<$3.UserAccount> getUserAccount($grpc.ServiceCall call, $3.UserStringRequest request);
  $async.Future<$3.UserAccount> createUserAccount($grpc.ServiceCall call, $3.UserAccount request);
}
