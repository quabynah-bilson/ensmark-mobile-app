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

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PaymentRequest extends $pb.GeneratedMessage {
  factory PaymentRequest({
    $core.String? paymentMethodId,
    $core.double? amount,
    $core.String? currency,
    $core.String? description,
  }) {
    final result = create();
    if (paymentMethodId != null) result.paymentMethodId = paymentMethodId;
    if (amount != null) result.amount = amount;
    if (currency != null) result.currency = currency;
    if (description != null) result.description = description;
    return result;
  }

  PaymentRequest._();

  factory PaymentRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory PaymentRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PaymentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'paymentMethodId')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..aOS(3, _omitFieldNames ? '' : 'currency')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest clone() => PaymentRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentRequest copyWith(void Function(PaymentRequest) updates) => super.copyWith((message) => updates(message as PaymentRequest)) as PaymentRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentRequest create() => PaymentRequest._();
  @$core.override
  PaymentRequest createEmptyInstance() => create();
  static $pb.PbList<PaymentRequest> createRepeated() => $pb.PbList<PaymentRequest>();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentRequest>(create);
  static PaymentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get paymentMethodId => $_getSZ(0);
  @$pb.TagNumber(1)
  set paymentMethodId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPaymentMethodId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaymentMethodId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get currency => $_getSZ(2);
  @$pb.TagNumber(3)
  set currency($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCurrency() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrency() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => $_clearField(4);
}

class PaymentResponse extends $pb.GeneratedMessage {
  factory PaymentResponse({
    $core.String? transactionId,
    $core.String? status,
    $core.double? amount,
    $core.String? currency,
    $fixnum.Int64? createdAt,
  }) {
    final result = create();
    if (transactionId != null) result.transactionId = transactionId;
    if (status != null) result.status = status;
    if (amount != null) result.amount = amount;
    if (currency != null) result.currency = currency;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  PaymentResponse._();

  factory PaymentResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory PaymentResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PaymentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'transactionId')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..aOS(4, _omitFieldNames ? '' : 'currency')
    ..aInt64(5, _omitFieldNames ? '' : 'createdAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentResponse clone() => PaymentResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PaymentResponse copyWith(void Function(PaymentResponse) updates) => super.copyWith((message) => updates(message as PaymentResponse)) as PaymentResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentResponse create() => PaymentResponse._();
  @$core.override
  PaymentResponse createEmptyInstance() => create();
  static $pb.PbList<PaymentResponse> createRepeated() => $pb.PbList<PaymentResponse>();
  @$core.pragma('dart2js:noInline')
  static PaymentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentResponse>(create);
  static PaymentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get transactionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transactionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get amount => $_getN(2);
  @$pb.TagNumber(3)
  set amount($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get currency => $_getSZ(3);
  @$pb.TagNumber(4)
  set currency($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCurrency() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrency() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => $_clearField(5);
}

class TransactionHistoryRequest extends $pb.GeneratedMessage {
  factory TransactionHistoryRequest({
    $fixnum.Int64? fromDate,
    $fixnum.Int64? toDate,
    $core.int? page,
    $core.int? pageSize,
  }) {
    final result = create();
    if (fromDate != null) result.fromDate = fromDate;
    if (toDate != null) result.toDate = toDate;
    if (page != null) result.page = page;
    if (pageSize != null) result.pageSize = pageSize;
    return result;
  }

  TransactionHistoryRequest._();

  factory TransactionHistoryRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory TransactionHistoryRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransactionHistoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'fromDate')
    ..aInt64(2, _omitFieldNames ? '' : 'toDate')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionHistoryRequest clone() => TransactionHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionHistoryRequest copyWith(void Function(TransactionHistoryRequest) updates) => super.copyWith((message) => updates(message as TransactionHistoryRequest)) as TransactionHistoryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionHistoryRequest create() => TransactionHistoryRequest._();
  @$core.override
  TransactionHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<TransactionHistoryRequest> createRepeated() => $pb.PbList<TransactionHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static TransactionHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionHistoryRequest>(create);
  static TransactionHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get fromDate => $_getI64(0);
  @$pb.TagNumber(1)
  set fromDate($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFromDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromDate() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get toDate => $_getI64(1);
  @$pb.TagNumber(2)
  set toDate($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearToDate() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get page => $_getIZ(2);
  @$pb.TagNumber(3)
  set page($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearPage() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get pageSize => $_getIZ(3);
  @$pb.TagNumber(4)
  set pageSize($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPageSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageSize() => $_clearField(4);
}

class TransactionHistoryResponse extends $pb.GeneratedMessage {
  factory TransactionHistoryResponse({
    $core.Iterable<PaymentResponse>? transactions,
    $core.int? totalCount,
  }) {
    final result = create();
    if (transactions != null) result.transactions.addAll(transactions);
    if (totalCount != null) result.totalCount = totalCount;
    return result;
  }

  TransactionHistoryResponse._();

  factory TransactionHistoryResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory TransactionHistoryResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransactionHistoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..pc<PaymentResponse>(1, _omitFieldNames ? '' : 'transactions', $pb.PbFieldType.PM, subBuilder: PaymentResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'totalCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionHistoryResponse clone() => TransactionHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionHistoryResponse copyWith(void Function(TransactionHistoryResponse) updates) => super.copyWith((message) => updates(message as TransactionHistoryResponse)) as TransactionHistoryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionHistoryResponse create() => TransactionHistoryResponse._();
  @$core.override
  TransactionHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<TransactionHistoryResponse> createRepeated() => $pb.PbList<TransactionHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static TransactionHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionHistoryResponse>(create);
  static TransactionHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PaymentResponse> get transactions => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get totalCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalCount($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotalCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalCount() => $_clearField(2);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
