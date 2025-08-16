// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'vendor.onboarding.dart';

class VendorOnboardingStateMapper
    extends ClassMapperBase<VendorOnboardingState> {
  VendorOnboardingStateMapper._();

  static VendorOnboardingStateMapper? _instance;
  static VendorOnboardingStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VendorOnboardingStateMapper._());
      PersonalInfoStateMapper.ensureInitialized();
      BusinessInfoStateMapper.ensureInitialized();
      LocationIdentityStateMapper.ensureInitialized();
      RevenueItemsStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VendorOnboardingState';

  static int _$currentStep(VendorOnboardingState v) => v.currentStep;
  static const Field<VendorOnboardingState, int> _f$currentStep =
      Field('currentStep', _$currentStep, opt: true, def: 0);
  static int _$totalSteps(VendorOnboardingState v) => v.totalSteps;
  static const Field<VendorOnboardingState, int> _f$totalSteps =
      Field('totalSteps', _$totalSteps, opt: true, def: 4);
  static Set<VendorOnboardingStep> _$completedSteps(VendorOnboardingState v) =>
      v.completedSteps;
  static const Field<VendorOnboardingState, Set<VendorOnboardingStep>>
      _f$completedSteps =
      Field('completedSteps', _$completedSteps, opt: true, def: const {});
  static PersonalInfoState _$personalInfo(VendorOnboardingState v) =>
      v.personalInfo;
  static const Field<VendorOnboardingState, PersonalInfoState> _f$personalInfo =
      Field('personalInfo', _$personalInfo,
          opt: true, def: const PersonalInfoState());
  static BusinessInfoState _$businessInfo(VendorOnboardingState v) =>
      v.businessInfo;
  static const Field<VendorOnboardingState, BusinessInfoState> _f$businessInfo =
      Field('businessInfo', _$businessInfo,
          opt: true, def: const BusinessInfoState());
  static LocationIdentityState _$locationIdentity(VendorOnboardingState v) =>
      v.locationIdentity;
  static const Field<VendorOnboardingState, LocationIdentityState>
      _f$locationIdentity = Field('locationIdentity', _$locationIdentity,
          opt: true, def: const LocationIdentityState());
  static RevenueItemsState _$revenueItems(VendorOnboardingState v) =>
      v.revenueItems;
  static const Field<VendorOnboardingState, RevenueItemsState> _f$revenueItems =
      Field('revenueItems', _$revenueItems,
          opt: true, def: const RevenueItemsState());

  @override
  final MappableFields<VendorOnboardingState> fields = const {
    #currentStep: _f$currentStep,
    #totalSteps: _f$totalSteps,
    #completedSteps: _f$completedSteps,
    #personalInfo: _f$personalInfo,
    #businessInfo: _f$businessInfo,
    #locationIdentity: _f$locationIdentity,
    #revenueItems: _f$revenueItems,
  };

  static VendorOnboardingState _instantiate(DecodingData data) {
    return VendorOnboardingState(
        currentStep: data.dec(_f$currentStep),
        totalSteps: data.dec(_f$totalSteps),
        completedSteps: data.dec(_f$completedSteps),
        personalInfo: data.dec(_f$personalInfo),
        businessInfo: data.dec(_f$businessInfo),
        locationIdentity: data.dec(_f$locationIdentity),
        revenueItems: data.dec(_f$revenueItems));
  }

  @override
  final Function instantiate = _instantiate;

  static VendorOnboardingState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VendorOnboardingState>(map);
  }

  static VendorOnboardingState fromJson(String json) {
    return ensureInitialized().decodeJson<VendorOnboardingState>(json);
  }
}

mixin VendorOnboardingStateMappable {
  String toJson() {
    return VendorOnboardingStateMapper.ensureInitialized()
        .encodeJson<VendorOnboardingState>(this as VendorOnboardingState);
  }

  Map<String, dynamic> toMap() {
    return VendorOnboardingStateMapper.ensureInitialized()
        .encodeMap<VendorOnboardingState>(this as VendorOnboardingState);
  }

  VendorOnboardingStateCopyWith<VendorOnboardingState, VendorOnboardingState,
          VendorOnboardingState>
      get copyWith => _VendorOnboardingStateCopyWithImpl(
          this as VendorOnboardingState, $identity, $identity);
  @override
  String toString() {
    return VendorOnboardingStateMapper.ensureInitialized()
        .stringifyValue(this as VendorOnboardingState);
  }

  @override
  bool operator ==(Object other) {
    return VendorOnboardingStateMapper.ensureInitialized()
        .equalsValue(this as VendorOnboardingState, other);
  }

  @override
  int get hashCode {
    return VendorOnboardingStateMapper.ensureInitialized()
        .hashValue(this as VendorOnboardingState);
  }
}

extension VendorOnboardingStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VendorOnboardingState, $Out> {
  VendorOnboardingStateCopyWith<$R, VendorOnboardingState, $Out>
      get $asVendorOnboardingState =>
          $base.as((v, t, t2) => _VendorOnboardingStateCopyWithImpl(v, t, t2));
}

abstract class VendorOnboardingStateCopyWith<
    $R,
    $In extends VendorOnboardingState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  PersonalInfoStateCopyWith<$R, PersonalInfoState, PersonalInfoState>
      get personalInfo;
  BusinessInfoStateCopyWith<$R, BusinessInfoState, BusinessInfoState>
      get businessInfo;
  LocationIdentityStateCopyWith<$R, LocationIdentityState,
      LocationIdentityState> get locationIdentity;
  RevenueItemsStateCopyWith<$R, RevenueItemsState, RevenueItemsState>
      get revenueItems;
  $R call(
      {int? currentStep,
      int? totalSteps,
      Set<VendorOnboardingStep>? completedSteps,
      PersonalInfoState? personalInfo,
      BusinessInfoState? businessInfo,
      LocationIdentityState? locationIdentity,
      RevenueItemsState? revenueItems});
  VendorOnboardingStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VendorOnboardingStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VendorOnboardingState, $Out>
    implements VendorOnboardingStateCopyWith<$R, VendorOnboardingState, $Out> {
  _VendorOnboardingStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VendorOnboardingState> $mapper =
      VendorOnboardingStateMapper.ensureInitialized();
  @override
  PersonalInfoStateCopyWith<$R, PersonalInfoState, PersonalInfoState>
      get personalInfo =>
          $value.personalInfo.copyWith.$chain((v) => call(personalInfo: v));
  @override
  BusinessInfoStateCopyWith<$R, BusinessInfoState, BusinessInfoState>
      get businessInfo =>
          $value.businessInfo.copyWith.$chain((v) => call(businessInfo: v));
  @override
  LocationIdentityStateCopyWith<$R, LocationIdentityState,
          LocationIdentityState>
      get locationIdentity => $value.locationIdentity.copyWith
          .$chain((v) => call(locationIdentity: v));
  @override
  RevenueItemsStateCopyWith<$R, RevenueItemsState, RevenueItemsState>
      get revenueItems =>
          $value.revenueItems.copyWith.$chain((v) => call(revenueItems: v));
  @override
  $R call(
          {int? currentStep,
          int? totalSteps,
          Set<VendorOnboardingStep>? completedSteps,
          PersonalInfoState? personalInfo,
          BusinessInfoState? businessInfo,
          LocationIdentityState? locationIdentity,
          RevenueItemsState? revenueItems}) =>
      $apply(FieldCopyWithData({
        if (currentStep != null) #currentStep: currentStep,
        if (totalSteps != null) #totalSteps: totalSteps,
        if (completedSteps != null) #completedSteps: completedSteps,
        if (personalInfo != null) #personalInfo: personalInfo,
        if (businessInfo != null) #businessInfo: businessInfo,
        if (locationIdentity != null) #locationIdentity: locationIdentity,
        if (revenueItems != null) #revenueItems: revenueItems
      }));
  @override
  VendorOnboardingState $make(CopyWithData data) => VendorOnboardingState(
      currentStep: data.get(#currentStep, or: $value.currentStep),
      totalSteps: data.get(#totalSteps, or: $value.totalSteps),
      completedSteps: data.get(#completedSteps, or: $value.completedSteps),
      personalInfo: data.get(#personalInfo, or: $value.personalInfo),
      businessInfo: data.get(#businessInfo, or: $value.businessInfo),
      locationIdentity:
          data.get(#locationIdentity, or: $value.locationIdentity),
      revenueItems: data.get(#revenueItems, or: $value.revenueItems));

  @override
  VendorOnboardingStateCopyWith<$R2, VendorOnboardingState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _VendorOnboardingStateCopyWithImpl($value, $cast, t);
}
