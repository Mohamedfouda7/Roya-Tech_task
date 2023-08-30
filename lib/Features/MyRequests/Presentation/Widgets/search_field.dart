

import '../../../../Core/BaseWidgets/ custom_text_filed.dart';
import '../../../../Core/app_exports.dart';
import 'dart:ui' as ui;
class SearchField extends StatelessWidget {
 SearchField({ Key? key }) : super(key: key);
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Center(
      child: SizedBox(
        height: getVerticalSize(60),
        width: getHorizontalSize(358),
        child: CustomTextField(
          isPassword: false,
          enabledBorderColor: ColorManager.white,
          prefixIcon: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                return ui.Gradient.linear(
                  const Offset(4, 24),
                  const Offset(24, 4),
                  [
                    ColorManager.linearColor1,
                    ColorManager.linearColor2,
                  ],
                );
              },
              child: const Icon(Icons.search)),
          hintText: "Find A Guest...",
          controller: _controller,
          filledColor: ColorManager.white,
        ),
      ),
    );

  }
}