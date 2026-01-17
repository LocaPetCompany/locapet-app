part of 'enroll_pet_cubit.dart';

@freezed
abstract class EnrollPetState with _$EnrollPetState {
  const factory EnrollPetState({
    @Default('') String name,
    @Default(PetType.dog) PetType petType,
    @Default('') String petGender,
    @Default('') String petBirth,
    @Default('') String petWeight,
    File? petImage,
  }) = _EnrollPetState;
}
