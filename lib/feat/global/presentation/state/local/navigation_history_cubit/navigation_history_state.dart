part of 'navigation_history_cubit.dart';

@freezed
abstract class NavigationHistoryState with _$NavigationHistoryState {
  const factory NavigationHistoryState({required List<int> history}) =
      _NavigationHistoryState;

  factory NavigationHistoryState.initial() =>
      const NavigationHistoryState(history: []);
}
