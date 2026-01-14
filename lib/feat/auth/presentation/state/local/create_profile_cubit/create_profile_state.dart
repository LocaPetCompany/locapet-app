part of 'create_profile_cubit.dart';

@freezed
abstract class CreateProfileState with _$CreateProfileState {
  const factory CreateProfileState({File? profileImage}) = _CreateProfileState;
}
