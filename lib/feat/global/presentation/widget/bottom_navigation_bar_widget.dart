import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  /// 📦 `BottomNavigationBar`
  ///
  /// 앱에서 쓰이는 전역 `BottomNavigation`
  ///
  final int currentIndex;
  final void Function(int) onTap;

  const BottomNavigationBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: Row(
        children: [
          NavigationItemWidget(
            label: '홈',
            icon: Icons.home,
            isActive: currentIndex == 0,
            onTap: () => onTap(0),
          ),
          NavigationItemWidget(
            label: '내주변',
            icon: Icons.location_on,
            isActive: currentIndex == 1,
            onTap: () => onTap(1),
          ),
          NavigationItemWidget(
            label: '찜',
            icon: Icons.favorite,
            isActive: currentIndex == 2,
            onTap: () => onTap(2),
          ),
          NavigationItemWidget(
            label: 'MY',
            icon: Icons.person,
            isActive: currentIndex == 3,
            onTap: () => onTap(3),
          ),
        ],
      ),
    );
  }
}
