// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardBottomNavState {

 dynamic get currentIndex;
/// Create a copy of DashboardBottomNavState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardBottomNavStateCopyWith<DashboardBottomNavState> get copyWith => _$DashboardBottomNavStateCopyWithImpl<DashboardBottomNavState>(this as DashboardBottomNavState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardBottomNavState&&const DeepCollectionEquality().equals(other.currentIndex, currentIndex));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currentIndex));

@override
String toString() {
  return 'DashboardBottomNavState(currentIndex: $currentIndex)';
}


}

/// @nodoc
abstract mixin class $DashboardBottomNavStateCopyWith<$Res>  {
  factory $DashboardBottomNavStateCopyWith(DashboardBottomNavState value, $Res Function(DashboardBottomNavState) _then) = _$DashboardBottomNavStateCopyWithImpl;
@useResult
$Res call({
 dynamic currentIndex
});




}
/// @nodoc
class _$DashboardBottomNavStateCopyWithImpl<$Res>
    implements $DashboardBottomNavStateCopyWith<$Res> {
  _$DashboardBottomNavStateCopyWithImpl(this._self, this._then);

  final DashboardBottomNavState _self;
  final $Res Function(DashboardBottomNavState) _then;

/// Create a copy of DashboardBottomNavState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentIndex = freezed,}) {
  return _then(_self.copyWith(
currentIndex: freezed == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardBottomNavState].
extension DashboardBottomNavStatePatterns on DashboardBottomNavState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardBottomNavState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardBottomNavState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardBottomNavState value)  $default,){
final _that = this;
switch (_that) {
case _DashboardBottomNavState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardBottomNavState value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardBottomNavState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic currentIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardBottomNavState() when $default != null:
return $default(_that.currentIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic currentIndex)  $default,) {final _that = this;
switch (_that) {
case _DashboardBottomNavState():
return $default(_that.currentIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic currentIndex)?  $default,) {final _that = this;
switch (_that) {
case _DashboardBottomNavState() when $default != null:
return $default(_that.currentIndex);case _:
  return null;

}
}

}

/// @nodoc


class _DashboardBottomNavState implements DashboardBottomNavState {
  const _DashboardBottomNavState({this.currentIndex = 0});
  

@override@JsonKey() final  dynamic currentIndex;

/// Create a copy of DashboardBottomNavState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardBottomNavStateCopyWith<_DashboardBottomNavState> get copyWith => __$DashboardBottomNavStateCopyWithImpl<_DashboardBottomNavState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardBottomNavState&&const DeepCollectionEquality().equals(other.currentIndex, currentIndex));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currentIndex));

@override
String toString() {
  return 'DashboardBottomNavState(currentIndex: $currentIndex)';
}


}

/// @nodoc
abstract mixin class _$DashboardBottomNavStateCopyWith<$Res> implements $DashboardBottomNavStateCopyWith<$Res> {
  factory _$DashboardBottomNavStateCopyWith(_DashboardBottomNavState value, $Res Function(_DashboardBottomNavState) _then) = __$DashboardBottomNavStateCopyWithImpl;
@override @useResult
$Res call({
 dynamic currentIndex
});




}
/// @nodoc
class __$DashboardBottomNavStateCopyWithImpl<$Res>
    implements _$DashboardBottomNavStateCopyWith<$Res> {
  __$DashboardBottomNavStateCopyWithImpl(this._self, this._then);

  final _DashboardBottomNavState _self;
  final $Res Function(_DashboardBottomNavState) _then;

/// Create a copy of DashboardBottomNavState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentIndex = freezed,}) {
  return _then(_DashboardBottomNavState(
currentIndex: freezed == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
