import 'dart:io';

import 'package:locapet/export/package.dart';
import 'package:locapet/export/util.dart';

part 'create_profile_cubit.freezed.dart';
part 'create_profile_state.dart';

class CreateProfileCubit extends Cubit<CreateProfileState> {
  CreateProfileCubit() : super(const CreateProfileState());

  Future<void> pickImage() async {
    final File? image = await GlobalFunction.pickImage();
    if (image != null) {
      emit(state.copyWith(profileImage: image));
    }
  }
}
