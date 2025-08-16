// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'revenue.item.dart';

class RevenueItemStateMapper extends ClassMapperBase<RevenueItemState> {
  RevenueItemStateMapper._();

  static RevenueItemStateMapper? _instance;
  static RevenueItemStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RevenueItemStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RevenueItemState';

  static List<RevenueItem> _$revenueItems(RevenueItemState v) => v.revenueItems;
  static const Field<RevenueItemState, List<RevenueItem>> _f$revenueItems =
      Field('revenueItems', _$revenueItems, opt: true, def: const []);

  @override
  final MappableFields<RevenueItemState> fields = const {
    #revenueItems: _f$revenueItems,
  };

  static RevenueItemState _instantiate(DecodingData data) {
    return RevenueItemState(revenueItems: data.dec(_f$revenueItems));
  }

  @override
  final Function instantiate = _instantiate;

  static RevenueItemState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RevenueItemState>(map);
  }

  static RevenueItemState fromJson(String json) {
    return ensureInitialized().decodeJson<RevenueItemState>(json);
  }
}

mixin RevenueItemStateMappable {
  String toJson() {
    return RevenueItemStateMapper.ensureInitialized()
        .encodeJson<RevenueItemState>(this as RevenueItemState);
  }

  Map<String, dynamic> toMap() {
    return RevenueItemStateMapper.ensureInitialized()
        .encodeMap<RevenueItemState>(this as RevenueItemState);
  }

  RevenueItemStateCopyWith<RevenueItemState, RevenueItemState, RevenueItemState>
      get copyWith => _RevenueItemStateCopyWithImpl(
          this as RevenueItemState, $identity, $identity);
  @override
  String toString() {
    return RevenueItemStateMapper.ensureInitialized()
        .stringifyValue(this as RevenueItemState);
  }

  @override
  bool operator ==(Object other) {
    return RevenueItemStateMapper.ensureInitialized()
        .equalsValue(this as RevenueItemState, other);
  }

  @override
  int get hashCode {
    return RevenueItemStateMapper.ensureInitialized()
        .hashValue(this as RevenueItemState);
  }
}

extension RevenueItemStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RevenueItemState, $Out> {
  RevenueItemStateCopyWith<$R, RevenueItemState, $Out>
      get $asRevenueItemState =>
          $base.as((v, t, t2) => _RevenueItemStateCopyWithImpl(v, t, t2));
}

abstract class RevenueItemStateCopyWith<$R, $In extends RevenueItemState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, RevenueItem, ObjectCopyWith<$R, RevenueItem, RevenueItem>>
      get revenueItems;
  $R call({List<RevenueItem>? revenueItems});
  RevenueItemStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RevenueItemStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RevenueItemState, $Out>
    implements RevenueItemStateCopyWith<$R, RevenueItemState, $Out> {
  _RevenueItemStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RevenueItemState> $mapper =
      RevenueItemStateMapper.ensureInitialized();
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
  RevenueItemState $make(CopyWithData data) => RevenueItemState(
      revenueItems: data.get(#revenueItems, or: $value.revenueItems));

  @override
  RevenueItemStateCopyWith<$R2, RevenueItemState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RevenueItemStateCopyWithImpl($value, $cast, t);
}
