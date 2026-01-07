import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class DropdownWidget extends StatelessWidget {
  final double height;
  final ValueChanged<dynamic>? onChanged;

  const DropdownWidget({super.key, required this.height, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DropdownCubit, DropdownState>(
      builder: (context, state) {
        if (state.availableItems.isEmpty) {
          return SizedBox(height: height);
        }
        return DropdownButtonHideUnderline(
          child: DropdownButton2<dynamic>(
            isExpanded: false,
            value: state.selectedItem,
            hint: Text(state.hintText),
            items: state.availableItems.map((item) {
              return DropdownMenuItem<dynamic>(
                value: item,
                child: Text(item.toString()),
              );
            }).toList(),
            onChanged: (dynamic newValue) {
              if (newValue != null) {
                context.read<DropdownCubit>().selectItem(newValue);
              }
            },
            buttonStyleData: ButtonStyleData(
              height: height,
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColor.whiteColor,
              ),
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.whiteColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
