import 'package:bloc/bloc.dart';
import 'package:mobile/features/authentication/domain/entities/owner.type.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'vendor/business.info.dart';
import 'vendor/location.identity.dart';
import 'vendor/personal.info.dart';
import 'vendor/revenue.items.dart';

part 'vendor.onboarding.mapper.dart';

enum VendorOnboardingStep { personalInfo, businessInfo, locationIdentity, revenueItems }

@MappableClass()
class VendorOnboardingState with VendorOnboardingStateMappable {
  const VendorOnboardingState({
    this.currentStep = 0,
    this.totalSteps = 4,
    this.completedSteps = const {},
    this.personalInfo = const PersonalInfoState(),
    this.businessInfo = const BusinessInfoState(),
    this.locationIdentity = const LocationIdentityState(),
    this.revenueItems = const RevenueItemsState(),
  });

  final int currentStep;
  final int totalSteps;
  final Set<VendorOnboardingStep> completedSteps;
  final PersonalInfoState personalInfo;
  final BusinessInfoState businessInfo;
  final LocationIdentityState locationIdentity;
  final RevenueItemsState revenueItems;
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
