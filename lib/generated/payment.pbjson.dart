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

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use paymentRequestDescriptor instead')
const PaymentRequest$json = {
  '1': 'PaymentRequest',
  '2': [
    {'1': 'payment_method_id', '3': 1, '4': 1, '5': 9, '10': 'paymentMethodId'},
    {'1': 'amount', '3': 2, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'currency', '3': 3, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `PaymentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentRequestDescriptor = $convert.base64Decode(
    'Cg5QYXltZW50UmVxdWVzdBIqChFwYXltZW50X21ldGhvZF9pZBgBIAEoCVIPcGF5bWVudE1ldG'
    'hvZElkEhYKBmFtb3VudBgCIAEoAVIGYW1vdW50EhoKCGN1cnJlbmN5GAMgASgJUghjdXJyZW5j'
    'eRIgCgtkZXNjcmlwdGlvbhgEIAEoCVILZGVzY3JpcHRpb24=');

@$core.Deprecated('Use paymentResponseDescriptor instead')
const PaymentResponse$json = {
  '1': 'PaymentResponse',
  '2': [
    {'1': 'transaction_id', '3': 1, '4': 1, '5': 9, '10': 'transactionId'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'amount', '3': 3, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'currency', '3': 4, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 3, '10': 'createdAt'},
  ],
};

/// Descriptor for `PaymentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentResponseDescriptor = $convert.base64Decode(
    'Cg9QYXltZW50UmVzcG9uc2USJQoOdHJhbnNhY3Rpb25faWQYASABKAlSDXRyYW5zYWN0aW9uSW'
    'QSFgoGc3RhdHVzGAIgASgJUgZzdGF0dXMSFgoGYW1vdW50GAMgASgBUgZhbW91bnQSGgoIY3Vy'
    'cmVuY3kYBCABKAlSCGN1cnJlbmN5Eh0KCmNyZWF0ZWRfYXQYBSABKANSCWNyZWF0ZWRBdA==');

@$core.Deprecated('Use transactionHistoryRequestDescriptor instead')
const TransactionHistoryRequest$json = {
  '1': 'TransactionHistoryRequest',
  '2': [
    {'1': 'from_date', '3': 1, '4': 1, '5': 3, '10': 'fromDate'},
    {'1': 'to_date', '3': 2, '4': 1, '5': 3, '10': 'toDate'},
    {'1': 'page', '3': 3, '4': 1, '5': 5, '10': 'page'},
    {'1': 'page_size', '3': 4, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `TransactionHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionHistoryRequestDescriptor = $convert.base64Decode(
    'ChlUcmFuc2FjdGlvbkhpc3RvcnlSZXF1ZXN0EhsKCWZyb21fZGF0ZRgBIAEoA1IIZnJvbURhdG'
    'USFwoHdG9fZGF0ZRgCIAEoA1IGdG9EYXRlEhIKBHBhZ2UYAyABKAVSBHBhZ2USGwoJcGFnZV9z'
    'aXplGAQgASgFUghwYWdlU2l6ZQ==');

@$core.Deprecated('Use transactionHistoryResponseDescriptor instead')
const TransactionHistoryResponse$json = {
  '1': 'TransactionHistoryResponse',
  '2': [
    {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.payment.PaymentResponse', '10': 'transactions'},
    {'1': 'total_count', '3': 2, '4': 1, '5': 5, '10': 'totalCount'},
  ],
};

/// Descriptor for `TransactionHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionHistoryResponseDescriptor = $convert.base64Decode(
    'ChpUcmFuc2FjdGlvbkhpc3RvcnlSZXNwb25zZRI8Cgx0cmFuc2FjdGlvbnMYASADKAsyGC5wYX'
    'ltZW50LlBheW1lbnRSZXNwb25zZVIMdHJhbnNhY3Rpb25zEh8KC3RvdGFsX2NvdW50GAIgASgF'
    'Ugp0b3RhbENvdW50');

