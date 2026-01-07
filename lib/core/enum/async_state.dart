/// 비동기 작업의 상태를 나타내는 열거형입니다.
///
/// 주로 데이터 로딩, API 호출 등 비동기 로직의 UI 상태를 관리할 때 사용됩니다.
/// Cubit, BLoC, Provider 등 상태 관리 패턴과 함께 사용하면 효과적입니다.
///
/// ## 사용 예시 (Cubit)
///
/// ```dart
/// class MyState {
///   final AsyncState status;
///   // ... other properties
///
///   MyState({ this.status = AsyncState.initial, ... });
///
///   MyState copyWith({ AsyncState? status, ... }) {
///     return MyState(status: status ?? this.status, ...);
///   }
/// }
///
/// class MyCubit extends Cubit<MyState> {
///   MyCubit() : super(MyState());
///
///   Future<void> fetchData() async {
///     emit(state.copyWith(status: AsyncState.loading));
///     try {
///       // ... fetch data ...
///       emit(state.copyWith(status: AsyncState.success, ...));
///     } catch (e) {
///       emit(state.copyWith(status: AsyncState.error, ...));
///     }
///   }
/// }
/// ```
enum AsyncState {
  /// 초기 상태. 아직 아무 작업도 시작되지 않았습니다.
  initial,

  /// 로딩 중인 상태. 비동기 작업이 진행 중입니다.
  loading,

  /// 성공 상태. 비동기 작업이 성공적으로 완료되었습니다.
  success,

  /// 에러 상태. 비동기 작업 중 오류가 발생했습니다.
  error,
}
