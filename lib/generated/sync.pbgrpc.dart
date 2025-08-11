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

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'sync.pb.dart' as $2;

export 'sync.pb.dart';

@$pb.GrpcServiceName('sync.SyncService')
class SyncServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$syncToServer = $grpc.ClientMethod<$2.AppSyncQueue, $2.SyncEmpty>(
      '/sync.SyncService/SyncToServer',
      ($2.AppSyncQueue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SyncEmpty.fromBuffer(value));
  static final _$syncFromServer = $grpc.ClientMethod<$2.SyncEmpty, $2.AppSyncQueue>(
      '/sync.SyncService/SyncFromServer',
      ($2.SyncEmpty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AppSyncQueue.fromBuffer(value));

  SyncServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$2.SyncEmpty> syncToServer($async.Stream<$2.AppSyncQueue> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$syncToServer, request, options: options).single;
  }

  $grpc.ResponseStream<$2.AppSyncQueue> syncFromServer($2.SyncEmpty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$syncFromServer, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('sync.SyncService')
abstract class SyncServiceBase extends $grpc.Service {
  $core.String get $name => 'sync.SyncService';

  SyncServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.AppSyncQueue, $2.SyncEmpty>(
        'SyncToServer',
        syncToServer,
        true,
        false,
        ($core.List<$core.int> value) => $2.AppSyncQueue.fromBuffer(value),
        ($2.SyncEmpty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SyncEmpty, $2.AppSyncQueue>(
        'SyncFromServer',
        syncFromServer_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.SyncEmpty.fromBuffer(value),
        ($2.AppSyncQueue value) => value.writeToBuffer()));
  }

  $async.Stream<$2.AppSyncQueue> syncFromServer_Pre($grpc.ServiceCall $call, $async.Future<$2.SyncEmpty> $request) async* {
    yield* syncFromServer($call, await $request);
  }

  $async.Future<$2.SyncEmpty> syncToServer($grpc.ServiceCall call, $async.Stream<$2.AppSyncQueue> request);
  $async.Stream<$2.AppSyncQueue> syncFromServer($grpc.ServiceCall call, $2.SyncEmpty request);
}
