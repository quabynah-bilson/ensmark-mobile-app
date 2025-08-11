import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard.freezed.dart';

@freezed
abstract class DashboardBottomNavState with _$DashboardBottomNavState {
  const factory DashboardBottomNavState({@Default(0) currentIndex}) = _DashboardBottomNavState;
}

final class DashboardBottomNavManager extends Cubit<DashboardBottomNavState> {
  DashboardBottomNavManager() : super(DashboardBottomNavState());

  void updateIndex(int index) => emit(state.copyWith(currentIndex: index));
}
