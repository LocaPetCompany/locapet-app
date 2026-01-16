import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_history_cubit.freezed.dart';
part 'navigation_history_state.dart';

class NavigationHistoryCubit extends Cubit<NavigationHistoryState> {
  NavigationHistoryCubit() : super(NavigationHistoryState.initial());

  void push(int index) {
    if (state.history.isEmpty || state.history.last != index) {
      final newHistory = List<int>.from(state.history)..add(index);
      emit(state.copyWith(history: newHistory));
    }
  }

  void pop() {
    if (state.history.isNotEmpty) {
      final newHistory = List<int>.from(state.history)..removeLast();
      emit(state.copyWith(history: newHistory));
    }
  }

  void remove(int index) {
    final newHistory = List<int>.from(state.history)
      ..removeWhere((element) => element == index);
    emit(state.copyWith(history: newHistory));
  }

  void clear() {
    emit(state.copyWith(history: []));
  }
}
