import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor.onboarding.freezed.dart';

@freezed
abstract class VendorOnboardingState with _$VendorOnboardingState {
  const factory VendorOnboardingState({
    @Default(0) int currentStep,
    @Default(4) int totalSteps,
    // PersonalInfoState? personalInfo,
  }) = _VendorOnboardingState;
}

class VendorOnboardingManager extends Cubit<VendorOnboardingState> {
  VendorOnboardingManager() : super(VendorOnboardingState());

  Future<void> submit() async {
    switch (state.currentStep) {
      case 0:
        //!todo
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
