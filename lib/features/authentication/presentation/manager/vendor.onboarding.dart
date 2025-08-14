import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'vendor/business.info.dart';
import 'vendor/location.identity.dart';
import 'vendor/personal.info.dart';
import 'vendor/revenue.items.dart';

part 'vendor.onboarding.freezed.dart';

enum VendorOnboardingStep { personalInfo, businessInfo, locationIdentity, revenueItems }

@freezed
abstract class VendorOnboardingState with _$VendorOnboardingState {
  const factory VendorOnboardingState({
    @Default(0) int currentStep,
    @Default(4) int totalSteps,
    required Set<VendorOnboardingStep> completedSteps,
    @Default(PersonalInfoState()) PersonalInfoState personalInfo,
    @Default(BusinessInfoState()) BusinessInfoState businessInfo,
    @Default(LocationIdentityState()) LocationIdentityState locationIdentity,
    @Default(RevenueItemsState()) RevenueItemsState revenueItems,
  }) = _VendorOnboardingState;
}

class VendorOnboardingManager extends Cubit<VendorOnboardingState> {
  VendorOnboardingManager() : super(VendorOnboardingState(completedSteps: {}));

  void update(VendorOnboardingState newState) => emit(newState);

  Future<void> submit() async {
    switch (state.currentStep) {
      case 0:
        emit(state.copyWith(completedSteps: {...state.completedSteps, VendorOnboardingStep.personalInfo}));
        break;
      case 1:
        emit(state.copyWith(completedSteps: {...state.completedSteps, VendorOnboardingStep.businessInfo}));
        break;
      case 2:
        emit(state.copyWith(completedSteps: {...state.completedSteps, VendorOnboardingStep.locationIdentity}));
        break;
      case 3:
        emit(state.copyWith(completedSteps: {...state.completedSteps, VendorOnboardingStep.revenueItems}));
        break;
      default:
        break;
    }
    emit(state.copyWith(currentStep: state.currentStep + 1));
  }
}
