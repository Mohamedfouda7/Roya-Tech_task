

import '../../app_exports.dart';

class AppConstants{
  static BoxDecoration boxDecoration = BoxDecoration(boxShadow: [
    BoxShadow(
      color: Colors.grey.shade300.withOpacity(0.4),
      spreadRadius: 2,
      blurRadius: 9,
      offset: const Offset(0, 0), // changes position of shadow
    ),
  ], color: Colors.white, borderRadius: BorderRadius.circular(AppValues.v4));

}