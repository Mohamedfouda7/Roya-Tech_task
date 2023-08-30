import '../app_exports.dart';

TextStyle _getTextStyle(
    {required Color color,
    required double fontSize,
    required FontWeight fontWeight,
    String? fontFamily,
    double? fontHieght}) {
  return TextStyle(
      color: color,
      fontFamily: fontFamily ?? FontConstants.fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: fontHieght ?? 1.0);
}
// textStyle bold
TextStyle boldTextStyle(
        {required double fontSize, required Color color, double? fontHieght}) =>
    _getTextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeightManager.bold,
        fontHieght: fontHieght);

// textStyle semiBold
TextStyle semiBoldTextStyle(
        {required double fontSize, required Color color, double? fontHieght}) =>
    _getTextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeightManager.semiBold,
        fontHieght: fontHieght);

// textStyle medium
TextStyle mediumTextStyle(
        {required double fontSize, required Color color, double? fontHieght}) =>
    _getTextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeightManager.medium,
        fontHieght: fontHieght);

// textStyle regular
TextStyle regularTextStyle(
        {required double fontSize, required Color color, double? fontHieght}) =>
    _getTextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeightManager.regular,
        fontHieght: fontHieght);

// textstyle light
TextStyle lightTextStyle(
        {required double fontSize, required Color color, double? fontHieght}) =>
    _getTextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeightManager.light,
        fontHieght: fontHieght);

// textstyle light
TextStyle extraLightTextStyle(
        {required double fontSize, required Color color, double? fontHieght}) =>
    _getTextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeightManager.extraLight,
        fontHieght: fontHieght);

TextStyle thinTextStyle(
        {required double fontSize, required Color color, double? fontHieght}) =>
    _getTextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeightManager.thin,
        fontHieght: fontHieght);
