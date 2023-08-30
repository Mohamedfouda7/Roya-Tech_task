


import '../app_exports.dart';


ThemeData getApplicationTheme() {
  return ThemeData(
// main colors
    primaryColor: ColorManager.primary,
    disabledColor: ColorManager.grey1,
    primaryColorDark: ColorManager.darkPrimary,
    primaryColorLight: ColorManager.lightPrimary,
// card view
    cardTheme: CardTheme(
      color: ColorManager.white,
      elevation: AppValues.v4,
      shadowColor: ColorManager.grey,
    ),
    // appBar theme
    appBarTheme: AppBarTheme(
        iconTheme:
            IconThemeData(color: ColorManager.black87, size: AppValues.v18),
        color: ColorManager.bkColor,
        centerTitle: false,
        elevation: AppValues.v4,
        shadowColor: ColorManager.lightPrimary,
        titleTextStyle: mediumTextStyle(
          fontSize: FontSize.s20,
          color: ColorManager.black,
        )),
    // button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.lightPrimary),
    // eleveted button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: regularTextStyle(
              fontSize: FontSize.s17, color: ColorManager.white),
          primary: ColorManager.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppValues.v12))),
    ),

  );
}
