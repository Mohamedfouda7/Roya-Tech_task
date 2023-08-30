import 'package:easy_localization/easy_localization.dart';

import '../app_exports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.height,
      this.width,
      required this.color,
      required this.buttonKey,
      this.fontsize,
      this.bRadius,
      required this.onTap})
      : super(key: key);

  final double? width;
  final double? height;
  final Color color;
  final String buttonKey;
  final VoidCallback onTap;
  final double ?fontsize;
  final double ? bRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? getVerticalSize(52),
        width: width ?? getHorizontalSize(330),
        decoration: BoxDecoration(
                     boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 9,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(bRadius??AppValues.v4),
          color: color,
        ),
        child: Center(
          child: Text(
            tr(buttonKey),
            style: mediumTextStyle(
                fontSize: fontsize??FontSize.s15, color: ColorManager.white),
          ),
        ),
      ),
    );
  }
}
