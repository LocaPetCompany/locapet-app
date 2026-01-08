import 'package:locapet/export/package.dart';

extension FigmaTextStyleHeight on TextStyle {
  TextStyle withFigmaLineHeight(double figmaLineHeightPx) {
    if (fontSize == null || fontSize! <= 0) {
      throw ArgumentError('FontSize 필수!');
    }
    return copyWith(height: figmaLineHeightPx / fontSize!);
  }
}
