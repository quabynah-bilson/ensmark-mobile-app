//
//  Generated code. Do not modify.
//  source: payment.proto
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

import 'payment.pb.dart' as $1;

export 'payment.pb.dart';

@$pb.GrpcServiceName('payment.PaymentService')
class PaymentServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$processPayment = $grpc.ClientMethod<$1.PaymentRequest, $1.PaymentResponse>(
      '/payment.PaymentService/ProcessPayment',
      ($1.PaymentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PaymentResponse.fromBuffer(value));
  static final _$getTransactionHistory = $grpc.ClientMethod<$1.TransactionHistoryRequest, $1.TransactionHistoryResponse>(
      '/payment.PaymentService/GetTransactionHistory',
      ($1.TransactionHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.TransactionHistoryResponse.fromBuffer(value));

  PaymentServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$1.PaymentResponse> processPayment($1.PaymentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$processPayment, request, options: options);
  }

  $grpc.ResponseFuture<$1.TransactionHistoryResponse> getTransactionHistory($1.TransactionHistoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTransactionHistory, request, options: options);
  }
}

@$pb.GrpcServiceName('payment.PaymentService')
abstract class PaymentServiceBase extends $grpc.Service {
  $core.String get $name => 'payment.PaymentService';

  PaymentServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.PaymentRequest, $1.PaymentResponse>(
        'ProcessPayment',
        processPayment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PaymentRequest.fromBuffer(value),
        ($1.PaymentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.TransactionHistoryRequest, $1.TransactionHistoryResponse>(
        'GetTransactionHistory',
        getTransactionHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.TransactionHistoryRequest.fromBuffer(value),
        ($1.TransactionHistoryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.PaymentResponse> processPayment_Pre($grpc.ServiceCall $call, $async.Future<$1.PaymentRequest> $request) async {
    return processPayment($call, await $request);
  }

  $async.Future<$1.TransactionHistoryResponse> getTransactionHistory_Pre($grpc.ServiceCall $call, $async.Future<$1.TransactionHistoryRequest> $request) async {
    return getTransactionHistory($call, await $request);
  }

  $async.Future<$1.PaymentResponse> processPayment($grpc.ServiceCall call, $1.PaymentRequest request);
  $async.Future<$1.TransactionHistoryResponse> getTransactionHistory($grpc.ServiceCall call, $1.TransactionHistoryRequest request);
}
