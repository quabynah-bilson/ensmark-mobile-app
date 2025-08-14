import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/features/authentication/domain/entities/owner.type.dart';

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

  void submit() {
    switch (state.currentStep) {
      case 0:
        emit(
          state.copyWith(
            totalSteps: state.personalInfo.type == OwnerType.individual ? 3 : 4,
            completedSteps: {...state.completedSteps, VendorOnboardingStep.personalInfo},
          ),
        );
        break;
      case 1:
        final step = state.personalInfo.type == OwnerType.business
            ? VendorOnboardingStep.businessInfo
            : VendorOnboardingStep.locationIdentity;
        emit(state.copyWith(completedSteps: {...state.completedSteps, step}));
        break;
      case 2:
        final step = state.personalInfo.type == OwnerType.business
            ? VendorOnboardingStep.locationIdentity
            : VendorOnboardingStep.revenueItems;
        emit(state.copyWith(completedSteps: {...state.completedSteps, step}));
        break;
      case 3:
        emit(state.copyWith(completedSteps: {...state.completedSteps, VendorOnboardingStep.revenueItems}));
        break;
      default:
        break;
    }
    if (state.currentStep < state.totalSteps) emit(state.copyWith(currentStep: state.currentStep + 1));
  }
}
