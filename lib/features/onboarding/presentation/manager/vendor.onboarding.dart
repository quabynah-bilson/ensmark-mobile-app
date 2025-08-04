import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_utils/shared_utils.dart';

part 'vendor.onboarding.freezed.dart';

@freezed
abstract class VendorOnboardingState with _$VendorOnboardingState {
  const factory VendorOnboardingState({@Default(0) int currentStep, @Default(4) int totalSteps}) =
      _VendorOnboardingState;
}

class VendorOnboardingManager extends Cubit<BlocState<VendorOnboardingState>> {
  VendorOnboardingManager() : super(BlocState.initialState());

  Future<void> submitStepOne() async {
    emit(BlocState.loadingState());
  }

  Future<void> submitStepTwo() async {
    emit(BlocState.loadingState());
  }

  Future<void> submitStepThree() async {
    emit(BlocState.loadingState());
  }

  Future<void> submitStepFour() async {
    emit(BlocState.loadingState());
  }

  Future<void> requestAccount() async {
    emit(BlocState.loadingState());
  }
}
