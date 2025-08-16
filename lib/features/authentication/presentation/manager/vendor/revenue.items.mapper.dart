// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'revenue.items.dart';

class RevenueItemsStateMapper extends ClassMapperBase<RevenueItemsState> {
  RevenueItemsStateMapper._();

  static RevenueItemsStateMapper? _instance;
  static RevenueItemsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RevenueItemsStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RevenueItemsState';

  static List<RevenueItem> _$revenueItems(RevenueItemsState v) =>
      v.revenueItems;
  static const Field<RevenueItemsState, List<RevenueItem>> _f$revenueItems =
      Field('revenueItems', _$revenueItems, opt: true, def: const []);

  @override
  final MappableFields<RevenueItemsState> fields = const {
    #revenueItems: _f$revenueItems,
  };

  static RevenueItemsState _instantiate(DecodingData data) {
    return RevenueItemsState(revenueItems: data.dec(_f$revenueItems));
  }

  @override
  final Function instantiate = _instantiate;

  static RevenueItemsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RevenueItemsState>(map);
  }

  static RevenueItemsState fromJson(String json) {
    return ensureInitialized().decodeJson<RevenueItemsState>(json);
  }
}

mixin RevenueItemsStateMappable {
  String toJson() {
    return RevenueItemsStateMapper.ensureInitialized()
        .encodeJson<RevenueItemsState>(this as RevenueItemsState);
  }

  Map<String, dynamic> toMap() {
    return RevenueItemsStateMapper.ensureInitialized()
        .encodeMap<RevenueItemsState>(this as RevenueItemsState);
  }

  RevenueItemsStateCopyWith<RevenueItemsState, RevenueItemsState,
          RevenueItemsState>
      get copyWith => _RevenueItemsStateCopyWithImpl(
          this as RevenueItemsState, $identity, $identity);
  @override
  String toString() {
    return RevenueItemsStateMapper.ensureInitialized()
        .stringifyValue(this as RevenueItemsState);
  }

  @override
  bool operator ==(Object other) {
    return RevenueItemsStateMapper.ensureInitialized()
        .equalsValue(this as RevenueItemsState, other);
  }

  @override
  int get hashCode {
    return RevenueItemsStateMapper.ensureInitialized()
        .hashValue(this as RevenueItemsState);
  }
}

extension RevenueItemsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RevenueItemsState, $Out> {
  RevenueItemsStateCopyWith<$R, RevenueItemsState, $Out>
      get $asRevenueItemsState =>
          $base.as((v, t, t2) => _RevenueItemsStateCopyWithImpl(v, t, t2));
}

abstract class RevenueItemsStateCopyWith<$R, $In extends RevenueItemsState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, RevenueItem, ObjectCopyWith<$R, RevenueItem, RevenueItem>>
      get revenueItems;
  $R call({List<RevenueItem>? revenueItems});
  RevenueItemsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RevenueItemsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RevenueItemsState, $Out>
    implements RevenueItemsStateCopyWith<$R, RevenueItemsState, $Out> {
  _RevenueItemsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RevenueItemsState> $mapper =
      RevenueItemsStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, RevenueItem, ObjectCopyWith<$R, RevenueItem, RevenueItem>>
      get revenueItems => ListCopyWith(
          $value.revenueItems,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(revenueItems: v));
  @override
  $R call({List<RevenueItem>? revenueItems}) => $apply(FieldCopyWithData(
      {if (revenueItems != null) #revenueItems: revenueItems}));
  @override
  RevenueItemsState $make(CopyWithData data) => RevenueItemsState(
      revenueItems: data.get(#revenueItems, or: $value.revenueItems));

  @override
  RevenueItemsStateCopyWith<$R2, RevenueItemsState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RevenueItemsStateCopyWithImpl($value, $cast, t);
}
