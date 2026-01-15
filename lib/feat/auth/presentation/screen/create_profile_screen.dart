import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class CreateProfileScreen extends StatefulWidget {
  static const String routeName = 'create_profile';
  static const String routePath = '/create_profile';

  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  late TextEditingController _nicknameController;

  @override
  void initState() {
    super.initState();
    _nicknameController = TextEditingController();
    _nicknameController.addListener(() {
      context.read<CreateProfileCubit>().setNickname(_nicknameController.text);
    });
  }

  @override
  void dispose() {
    _nicknameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonSafeArea(
      child: BlocBuilder<CreateProfileCubit, CreateProfileState>(
        builder: (context, profileState) {
          return Scaffold(
            appBar: const SubAppBar(title: '프로필 설정'),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  SizedBox(
                    height: 120.h,
                    width: double.infinity,
                    child: Center(
                      child: GestureDetector(
                        onTap: () =>
                            context.read<CreateProfileCubit>().pickImage(),
                        child: Stack(
                          children: [
                            profileState.profileImage != null
                                ? CommonDecoratedBox(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColor.grayColor200,
                                        width: 1.54.w,
                                      ),
                                      image: DecorationImage(
                                        image: FileImage(
                                          profileState.profileImage!,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    width: 86.w,
                                    height: 86.h,
                                  )
                                : SvgPicture.asset(
                                    AssetPath.avatar,
                                    width: 86.w,
                                  ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: SvgPicture.asset(
                                AssetPath.camera,
                                width: 24.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap(24.h),
                  CommonTextField(
                    controller: _nicknameController,
                    hintText: '닉네임',
                    guideText: '* 최대 6글자',
                  ),
                ],
              ),
            ),
            bottomSheet: BottomContainer(
              onTap: profileState.nickname.isNotEmpty
                  ? () => context.pushNamed(EnrollPetScreen.routeName)
                  : () {},
              text: '완료',
              boxColor: profileState.nickname.isNotEmpty
                  ? AppColor.primaryColor500
                  : AppColor.grayColor400,
            ),
          );
        },
      ),
    );
  }
}
