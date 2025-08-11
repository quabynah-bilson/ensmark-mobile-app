// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor.onboarding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VendorOnboardingState {

 int get currentStep; int get totalSteps; PersonalInfoState get personalInfo; BusinessInfoState get businessInfo;
/// Create a copy of VendorOnboardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendorOnboardingStateCopyWith<VendorOnboardingState> get copyWith => _$VendorOnboardingStateCopyWithImpl<VendorOnboardingState>(this as VendorOnboardingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendorOnboardingState&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.totalSteps, totalSteps) || other.totalSteps == totalSteps)&&(identical(other.personalInfo, personalInfo) || other.personalInfo == personalInfo)&&(identical(other.businessInfo, businessInfo) || other.businessInfo == businessInfo));
}


@override
int get hashCode => Object.hash(runtimeType,currentStep,totalSteps,personalInfo,businessInfo);

@override
String toString() {
  return 'VendorOnboardingState(currentStep: $currentStep, totalSteps: $totalSteps, personalInfo: $personalInfo, businessInfo: $businessInfo)';
}


}

/// @nodoc
abstract mixin class $VendorOnboardingStateCopyWith<$Res>  {
  factory $VendorOnboardingStateCopyWith(VendorOnboardingState value, $Res Function(VendorOnboardingState) _then) = _$VendorOnboardingStateCopyWithImpl;
@useResult
$Res call({
 int currentStep, int totalSteps, PersonalInfoState personalInfo, BusinessInfoState businessInfo
});


$PersonalInfoStateCopyWith<$Res> get personalInfo;$BusinessInfoStateCopyWith<$Res> get businessInfo;

}
/// @nodoc
class _$VendorOnboardingStateCopyWithImpl<$Res>
    implements $VendorOnboardingStateCopyWith<$Res> {
  _$VendorOnboardingStateCopyWithImpl(this._self, this._then);

  final VendorOnboardingState _self;
  final $Res Function(VendorOnboardingState) _then;

/// Create a copy of VendorOnboardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentStep = null,Object? totalSteps = null,Object? personalInfo = null,Object? businessInfo = null,}) {
  return _then(_self.copyWith(
currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,totalSteps: null == totalSteps ? _self.totalSteps : totalSteps // ignore: cast_nullable_to_non_nullable
as int,personalInfo: null == personalInfo ? _self.personalInfo : personalInfo // ignore: cast_nullable_to_non_nullable
as PersonalInfoState,businessInfo: null == businessInfo ? _self.businessInfo : businessInfo // ignore: cast_nullable_to_non_nullable
as BusinessInfoState,
  ));
}
/// Create a copy of VendorOnboardingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonalInfoStateCopyWith<$Res> get personalInfo {
  
  return $PersonalInfoStateCopyWith<$Res>(_self.personalInfo, (value) {
    return _then(_self.copyWith(personalInfo: value));
  });
}/// Create a copy of VendorOnboardingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessInfoStateCopyWith<$Res> get businessInfo {
  
  return $BusinessInfoStateCopyWith<$Res>(_self.businessInfo, (value) {
    return _then(_self.copyWith(businessInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [VendorOnboardingState].
extension VendorOnboardingStatePatterns on VendorOnboardingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendorOnboardingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendorOnboardingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendorOnboardingState value)  $default,){
final _that = this;
switch (_that) {
case _VendorOnboardingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendorOnboardingState value)?  $default,){
final _that = this;
switch (_that) {
case _VendorOnboardingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentStep,  int totalSteps,  PersonalInfoState personalInfo,  BusinessInfoState businessInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendorOnboardingState() when $default != null:
return $default(_that.currentStep,_that.totalSteps,_that.personalInfo,_that.businessInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentStep,  int totalSteps,  PersonalInfoState personalInfo,  BusinessInfoState businessInfo)  $default,) {final _that = this;
switch (_that) {
case _VendorOnboardingState():
return $default(_that.currentStep,_that.totalSteps,_that.personalInfo,_that.businessInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentStep,  int totalSteps,  PersonalInfoState personalInfo,  BusinessInfoState businessInfo)?  $default,) {final _that = this;
switch (_that) {
case _VendorOnboardingState() when $default != null:
return $default(_that.currentStep,_that.totalSteps,_that.personalInfo,_that.businessInfo);case _:
  return null;

}
}

}

/// @nodoc


class _VendorOnboardingState implements VendorOnboardingState {
  const _VendorOnboardingState({this.currentStep = 0, this.totalSteps = 4, this.personalInfo = const PersonalInfoState(), this.businessInfo = const BusinessInfoState()});
  

@override@JsonKey() final  int currentStep;
@override@JsonKey() final  int totalSteps;
@override@JsonKey() final  PersonalInfoState personalInfo;
@override@JsonKey() final  BusinessInfoState businessInfo;

/// Create a copy of VendorOnboardingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendorOnboardingStateCopyWith<_VendorOnboardingState> get copyWith => __$VendorOnboardingStateCopyWithImpl<_VendorOnboardingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendorOnboardingState&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.totalSteps, totalSteps) || other.totalSteps == totalSteps)&&(identical(other.personalInfo, personalInfo) || other.personalInfo == personalInfo)&&(identical(other.businessInfo, businessInfo) || other.businessInfo == businessInfo));
}


@override
int get hashCode => Object.hash(runtimeType,currentStep,totalSteps,personalInfo,businessInfo);

@override
String toString() {
  return 'VendorOnboardingState(currentStep: $currentStep, totalSteps: $totalSteps, personalInfo: $personalInfo, businessInfo: $businessInfo)';
}


}

/// @nodoc
abstract mixin class _$VendorOnboardingStateCopyWith<$Res> implements $VendorOnboardingStateCopyWith<$Res> {
  factory _$VendorOnboardingStateCopyWith(_VendorOnboardingState value, $Res Function(_VendorOnboardingState) _then) = __$VendorOnboardingStateCopyWithImpl;
@override @useResult
$Res call({
 int currentStep, int totalSteps, PersonalInfoState personalInfo, BusinessInfoState businessInfo
});


@override $PersonalInfoStateCopyWith<$Res> get personalInfo;@override $BusinessInfoStateCopyWith<$Res> get businessInfo;

}
/// @nodoc
class __$VendorOnboardingStateCopyWithImpl<$Res>
    implements _$VendorOnboardingStateCopyWith<$Res> {
  __$VendorOnboardingStateCopyWithImpl(this._self, this._then);

  final _VendorOnboardingState _self;
  final $Res Function(_VendorOnboardingState) _then;

/// Create a copy of VendorOnboardingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentStep = null,Object? totalSteps = null,Object? personalInfo = null,Object? businessInfo = null,}) {
  return _then(_VendorOnboardingState(
currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,totalSteps: null == totalSteps ? _self.totalSteps : totalSteps // ignore: cast_nullable_to_non_nullable
as int,personalInfo: null == personalInfo ? _self.personalInfo : personalInfo // ignore: cast_nullable_to_non_nullable
as PersonalInfoState,businessInfo: null == businessInfo ? _self.businessInfo : businessInfo // ignore: cast_nullable_to_non_nullable
as BusinessInfoState,
  ));
}

/// Create a copy of VendorOnboardingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonalInfoStateCopyWith<$Res> get personalInfo {
  
  return $PersonalInfoStateCopyWith<$Res>(_self.personalInfo, (value) {
    return _then(_self.copyWith(personalInfo: value));
  });
}/// Create a copy of VendorOnboardingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BusinessInfoStateCopyWith<$Res> get businessInfo {
  
  return $BusinessInfoStateCopyWith<$Res>(_self.businessInfo, (value) {
    return _then(_self.copyWith(businessInfo: value));
  });
}
}

// dart format on
