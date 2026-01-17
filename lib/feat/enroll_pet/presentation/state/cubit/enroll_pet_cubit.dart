import 'dart:io';

import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';
import 'package:locapet/export/util.dart';

part 'enroll_pet_cubit.freezed.dart';
part 'enroll_pet_state.dart';

class EnrollPetCubit extends Cubit<EnrollPetState> {
  EnrollPetCubit() : super(const EnrollPetState());

  void selectPetType(PetType type) {
    emit(state.copyWith(petType: type));
  }

  void selectPetGender(String gender) {
    emit(state.copyWith(petGender: gender));
  }

  Future<void> selectPetImage() async {
    final File? image = await GlobalFunction.pickImage();
    if (image != null) {
      emit(state.copyWith(petImage: image));
    }
  }

  void selectPetBirth(String birth) {
    emit(state.copyWith(petBirth: birth));
  }

  void selectPetWeight(double weight) {
    emit(state.copyWith(petWeight: weight));
  }

  void selectPetNeutering(String neutering) {
    emit(state.copyWith(petNeutering: neutering));
  }

  void selectPetVaccination(String vaccination) {
    emit(state.copyWith(petVaccination: vaccination));
  }

  void selectPetEnrollChip(String enrollChip) {
    emit(state.copyWith(petEnrollChip: enrollChip));
  }

  void selectPetBreed(String breed) {
    emit(state.copyWith(petBreed: breed));
  }

  void selectPetAllergy(String allergy) {
    emit(state.copyWith(petAllergy: allergy));
  }

  void selectPetPersonality(String personality) {
    emit(state.copyWith(petPersonality: personality));
  }

  void selectPetIntroduction(String introduction) {
    emit(state.copyWith(petIntroduction: introduction));
  }
}
