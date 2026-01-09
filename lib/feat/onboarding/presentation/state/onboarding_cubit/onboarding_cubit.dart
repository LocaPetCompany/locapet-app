import 'package:locapet/export/package.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState());

  void setPage(int index) {
    emit(state.copyWith(pageIndex: index));
  }
}
