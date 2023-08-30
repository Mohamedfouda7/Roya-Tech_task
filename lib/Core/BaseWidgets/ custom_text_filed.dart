import 'package:roya_tech_task/Core/Utils/Constants/app_constants.dart';

import '../app_exports.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  String? hintText;
  EdgeInsets? margin = const EdgeInsets.all(0);
  bool? isPassword = false;
  TextInputType? type = TextInputType.text;
  Color? filledColor;
  Color? enabledBorderColor;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool? readOnly = false;
  VoidCallback? ontap;
  final Function(String value)? onSubmit;
  int? maxLines;
  TextInputAction? inputAction;
  // Function(String value)? onChange;
  final Function(String value)? validate;
  double? height;
  CustomTextField({
    Key? key,
    required this.hintText,
    this.controller,
    this.margin,
    this.isPassword,
    this.type,
    this.filledColor,
    this.enabledBorderColor,
    this.prefixIcon,
    this.suffixIcon,
    // this.onChange,
    this.validate,
    this.readOnly,
    this.ontap,
    this.maxLines,
    this.inputAction = TextInputAction.next,
    this.onSubmit,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:maxLines!=null?null: height?? getVerticalSize(AppValues.v56),
      decoration:  AppConstants.boxDecoration ,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: FocusNode(),
        readOnly: readOnly ?? false,
        keyboardType: type,
        onTap: ontap,
        maxLines: maxLines ?? 1,
        enableSuggestions: true,
        textInputAction: inputAction,
        enableInteractiveSelection: true,
        autofocus: false,
        // onChanged: (value) => onChange!(value),
        onFieldSubmitted: onSubmit,
        obscureText: isPassword!,
        validator: (value) => validate!(value!),

        style: semiBoldTextStyle(
            fontSize: FontSize.s14,
            color: ColorManager.black8),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: enabledBorderColor ?? Colors.white, width: 1),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:  BorderSide(color: ColorManager.black60, width: 1)),
            errorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.red.withOpacity(.7), width: 1),
                borderRadius: BorderRadius.circular(10)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red, width: 1)),
            hintText: hintText,
            hintStyle: mediumTextStyle(fontSize: FontSize.s14, color: ColorManager.hintTextColor,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            filled: true,
            suffixIcon: suffixIcon,
            
            prefixIcon: prefixIcon,
            fillColor: filledColor ??ColorManager.lightGrey),
      ),
    );
  }
}
