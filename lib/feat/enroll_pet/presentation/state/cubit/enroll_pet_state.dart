part of 'enroll_pet_cubit.dart';

@freezed
abstract class EnrollPetState with _$EnrollPetState {
  const factory EnrollPetState({
    @Default('') String name,
    @Default(PetType.dog) PetType petType,
    @Default('') String petGender,
    @Default('') String petBirth,
    @Default(0.0) double petWeight,
    @Default('') String petNeutering,
    @Default('') String petVaccination,
    @Default('') String petEnrollChip,
    @Default('') String petBreed,
    @Default('') String petAllergy,
    @Default('') String petPersonality,
    @Default('') String petIntroduction,
    File? petImage,
  }) = _EnrollPetState;
}
