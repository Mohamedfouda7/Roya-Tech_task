import 'package:flutter/material.dart';

class ColorManager {
  static Color bkColor = const Color(0xffF6F7F8);
  static Color white = const Color(0xffFFFFFF);
  static Color primary = const Color(0xffEE7850);
  static Color linearColor1 = const Color(0xffF9755E);
  static Color linearColor2 = const Color(0xffDA3562);
  static Color headerTextColor = const Color(0xff3A4255);
  static Color confirmedIconColor = const Color(0xff3381BD);
  static Color pendingIconColor = const Color(0xffF78D19);
  static Color rejectedIconColor = const Color(0xffCF5858);
  static Color doneIconColor = const Color(0xff219770);
  static Color profileBorderColor = const Color(0xffE95560);
  static Color profileDescColor = const Color(0xff9096A9);

  static Color hintTextColor = const Color(0xff7B8292);
  static Color lightPrimary = const Color(0xccEE7850);
  static Color secondary = const Color(0xff57C16E);
  static Color third = const Color(0xff577FEE);
  static Color lightGrey = const Color(0xffEEF0F1);
  static Color grey = const Color(0xff9FA8BC);
  static Color black100 = const Color(0xff04060F);
  static Color darkGrey = const Color(0xff757575);
  static Color labelColor = const Color(0xff424242);
  static Color labelHomeColor = const Color(0xff51546A);
  static Color labelValHomeColor = const Color(0xffECEEF0);
  static Color black60 = const Color(0xff313638);
  static Color doneColor = const Color(0xff57C19B);
  static Color navBarLabelColor = const Color(0xff9E9E9E);
  static Color callColor = const Color(0xffE47D31);
  static Color locationPinColor = const Color(0xff316EE4);
  static Color addColor = const Color(0xff363636);
  static Color expireColor = const Color(0xffE31D1C);
  static Color acceptColor = const Color(0xcc4CAF50);
  static Color cancellColor = const Color(0xffE54949);
  static Color underBottomLineColor = const Color(0xffD0D0D0);
  static Color editColor = const Color(0xff515680);
  static Color closeColor = const Color(0xffE9E9E9);
  static Color calanderBkColor = const Color(0xffF2F2F2);
  static Color languageColor = const Color(0xffEC7852);
  static Color calenderColor = const Color(0xff6678AB);
  static Color infoColor = const Color(0xffDFE7FC);
  static Color locationColor = const Color(0xff6695DC);
  static Color demoColor = const Color(0xffA866DC);
  static Color regMessageColor = const Color(0xff1F2937);

  //new colors
  static Color darkPrimary = const Color(0xff0179CB);

  static Color black = const Color(0xff000000);
  static Color black87 = const Color(0xDD000000);
  static Color errorColor = const Color(0xffe61f34);
  static Color grey1 = const Color(0xff545A60);
  static Color grey2 = const Color(0xff7883A0);

  static Color black8 = const Color(0xff212121);
  static Color inActiveSliderColor = const Color(0xffb6fffb);
  static Color favColor = const Color(0xffA9C7DB);
  static Color propDetailColor = const Color(0xffFAFAFA);

  static Color contactInfoColor = const Color(0xff0179CB);
  static Color contactColor = const Color(0xff0179CB);
  static Color selectedAreaColor = const Color(0xff2AD352);
  static Color startVisitColor = const Color(0xff3BC88D);
  static Color endVisitColor = const Color(0xffE15D5D);
  static Color cancelVisitColor = const Color(0xffF29856);
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    if (hexColorString.contains('#') && hexColorString.length == 7) {
      hexColorString = hexColorString.replaceAll('#', '');
      if (hexColorString.length == 6) {
        hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
      }
      return Color(int.parse(hexColorString, radix: 16));
    }
    return ColorManager.primary;
  }
}
