import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class EnrollPetScreen extends StatefulWidget {
  static const String routeName = 'enroll_pet';
  static const String routePath = '/enroll_pet';

  final String appBarTitle;

  const EnrollPetScreen({super.key, required this.appBarTitle});

  @override
  State<EnrollPetScreen> createState() => _EnrollPetScreenState();
}

class _EnrollPetScreenState extends State<EnrollPetScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonSafeArea(
      child: BlocBuilder<EnrollPetCubit, EnrollPetState>(
        builder: (context, state) {
          return Scaffold(
            appBar: SubAppBar(
              title: widget.appBarTitle,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      '다음에하기',
                      style: AppTextStyle.label14M.copyWith(
                        color: AppColor.textTertiaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    child: SlideToggleBtn(
                      leftText: PetType.dog.type,
                      rightText: PetType.cat.type,
                      isLeftSelected: state.petType == PetType.dog,
                      onTapLeft: () => context
                          .read<EnrollPetCubit>()
                          .selectPetType(PetType.dog),
                      onTapRight: () => context
                          .read<EnrollPetCubit>()
                          .selectPetType(PetType.cat),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: GestureDetector(
                      onTap: () =>
                          context.read<EnrollPetCubit>().selectPetImage(),
                      child: Stack(
                        children: [
                          CommonDecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColor.grayColor300,
                                width: 1.w,
                              ),
                              color: AppColor.grayColor100,
                              image: state.petImage != null
                                  ? DecorationImage(
                                      image: FileImage(state.petImage!),
                                      fit: BoxFit.cover,
                                    )
                                  : null,
                            ),
                            width: 86.w,
                            height: 86.h,
                            child: state.petImage != null
                                ? null
                                : Padding(
                                    padding: EdgeInsets.all(16.w),
                                    child: SvgPicture.asset(
                                      state.petType == PetType.dog
                                          ? AssetPath.dog
                                          : AssetPath.cat,
                                      width: 54.w,
                                      height: 54.h,
                                      colorFilter: const ColorFilter.mode(
                                        AppColor.grayColor300,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: SvgPicture.asset(
                              AssetPath.camera,
                              width: 24.w,
                              height: 24.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      children: [
                        TextFieldRow(
                          label: '이름',
                          hintText: '이름을 입력해주세요',
                          keyboardType: TextInputType.name,
                          textFieldController: _nameController,
                        ),
                        Column(
                          children: [
                            TwinBtnRow(
                              label: '성별',
                              leftText: '남아',
                              leftOnTap: () => context
                                  .read<EnrollPetCubit>()
                                  .selectPetGender('MALE'),
                              leftIsEnabled: state.petGender == 'MALE',
                              rightText: '여아',
                              rightOnTap: () => context
                                  .read<EnrollPetCubit>()
                                  .selectPetGender('FEMALE'),
                              rightIsEnabled: state.petGender == 'FEMALE',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const HorizontalDivider(),
                  const HorizontalDivider(),
                ],
              ),
            ),
            bottomSheet: BottomContainer(
              onTap: () {},
              text: '등록하기',
              boxColor: AppColor.primaryColor400,
            ),
          );
        },
      ),
    );
  }
}
