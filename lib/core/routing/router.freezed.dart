// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'router.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendorVerificationPageArgs {

 Map<String, String> get params;
/// Create a copy of VendorVerificationPageArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorVerificationPageArgsCopyWith<VendorVerificationPageArgs> get copyWith => _$VendorVerificationPageArgsCopyWithImpl<VendorVerificationPageArgs>(this as VendorVerificationPageArgs, _$identity);

  /// Serializes this VendorVerificationPageArgs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorVerificationPageArgs&&const DeepCollectionEquality().equals(other.params, params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(params));

@override
String toString() {
  return 'VendorVerificationPageArgs(params: $params)';
}


}

/// @nodoc
abstract mixin class $VendorVerificationPageArgsCopyWith<$Res>  {
  factory $VendorVerificationPageArgsCopyWith(VendorVerificationPageArgs value, $Res Function(VendorVerificationPageArgs) _then) = _$VendorVerificationPageArgsCopyWithImpl;
@useResult
$Res call({
 Map<String, String> params
});




}
/// @nodoc
class _$VendorVerificationPageArgsCopyWithImpl<$Res>
    implements $VendorVerificationPageArgsCopyWith<$Res> {
  _$VendorVerificationPageArgsCopyWithImpl(this._self, this._then);

  final VendorVerificationPageArgs _self;
  final $Res Function(VendorVerificationPageArgs) _then;

/// Create a copy of VendorVerificationPageArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? params = null,}) {
  return _then(_self.copyWith(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [VendorVerificationPageArgs].
extension VendorVerificationPageArgsPatterns on VendorVerificationPageArgs {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorVerificationPageArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorVerificationPageArgs() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorVerificationPageArgs value)  $default,){
final _that = this;
switch (_that) {
case _VendorVerificationPageArgs():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorVerificationPageArgs value)?  $default,){
final _that = this;
switch (_that) {
case _VendorVerificationPageArgs() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, String> params)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorVerificationPageArgs() when $default != null:
return $default(_that.params);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, String> params)  $default,) {final _that = this;
switch (_that) {
case _VendorVerificationPageArgs():
return $default(_that.params);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, String> params)?  $default,) {final _that = this;
switch (_that) {
case _VendorVerificationPageArgs() when $default != null:
return $default(_that.params);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendorVerificationPageArgs implements VendorVerificationPageArgs {
  const _VendorVerificationPageArgs({required final  Map<String, String> params}): _params = params;
  factory _VendorVerificationPageArgs.fromJson(Map<String, dynamic> json) => _$VendorVerificationPageArgsFromJson(json);

 final  Map<String, String> _params;
@override Map<String, String> get params {
  if (_params is EqualUnmodifiableMapView) return _params;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_params);
}


/// Create a copy of VendorVerificationPageArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorVerificationPageArgsCopyWith<_VendorVerificationPageArgs> get copyWith => __$VendorVerificationPageArgsCopyWithImpl<_VendorVerificationPageArgs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendorVerificationPageArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorVerificationPageArgs&&const DeepCollectionEquality().equals(other._params, _params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_params));

@override
String toString() {
  return 'VendorVerificationPageArgs(params: $params)';
}


}

/// @nodoc
abstract mixin class _$VendorVerificationPageArgsCopyWith<$Res> implements $VendorVerificationPageArgsCopyWith<$Res> {
  factory _$VendorVerificationPageArgsCopyWith(_VendorVerificationPageArgs value, $Res Function(_VendorVerificationPageArgs) _then) = __$VendorVerificationPageArgsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, String> params
});




}
/// @nodoc
class __$VendorVerificationPageArgsCopyWithImpl<$Res>
    implements _$VendorVerificationPageArgsCopyWith<$Res> {
  __$VendorVerificationPageArgsCopyWithImpl(this._self, this._then);

  final _VendorVerificationPageArgs _self;
  final $Res Function(_VendorVerificationPageArgs) _then;

/// Create a copy of VendorVerificationPageArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_VendorVerificationPageArgs(
params: null == params ? _self._params : params // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
