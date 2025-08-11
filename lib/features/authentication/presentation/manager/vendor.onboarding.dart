import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'vendor/business.info.dart';
import 'vendor/personal.info.dart';

part 'vendor.onboarding.freezed.dart';

@freezed
abstract class VendorOnboardingState with _$VendorOnboardingState {
  const factory VendorOnboardingState({
    @Default(0) int currentStep,
    @Default(4) int totalSteps,
    @Default(PersonalInfoState()) PersonalInfoState personalInfo,
    @Default(BusinessInfoState()) BusinessInfoState businessInfo,
  }) = _VendorOnboardingState;
}

class VendorOnboardingManager extends Cubit<VendorOnboardingState> {
  VendorOnboardingManager() : super(VendorOnboardingState());

  void update(VendorOnboardingState newState) => emit(newState);

  Future<void> submit() async {
    switch (state.currentStep) {
      case 0:
        //!todo - validate step one
        break;
      case 1:
        //!todo
        break;
      case 2:
        //!todo
        break;
      case 3:
        //!todo
        break;
      default:
        break;
    }
    emit(state.copyWith(currentStep: state.currentStep + 1));
  }
}
