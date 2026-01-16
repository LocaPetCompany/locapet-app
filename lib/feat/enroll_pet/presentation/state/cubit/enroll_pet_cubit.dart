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
}
