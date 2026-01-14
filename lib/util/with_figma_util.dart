import 'package:locapet/export/package.dart';

extension FigmaTextStyleHeight on TextStyle {
  TextStyle withFigmaLineHeight(double figmaLineHeightPx) {
    if (fontSize == null || fontSize! <= 0) {
      throw ArgumentError('FontSize 필수!');
    }
    return copyWith(height: figmaLineHeightPx / fontSize!);
  }
}

extension FigmaSpacing on TextStyle {
  TextStyle withFigmaSpacing({double? percentage}) {
    if (percentage == null || fontSize == null) return this;
    return copyWith(letterSpacing: fontSize! * (percentage / 100));
  }
}
