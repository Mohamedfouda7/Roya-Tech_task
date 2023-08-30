

import '../app_exports.dart';

extension EmptySpace on num {
  SizedBox get ph => SizedBox(
        height: getVerticalSize(toDouble()),
      );
  SizedBox get pw => SizedBox(
        width: getHorizontalSize(toDouble()),
      );
}
