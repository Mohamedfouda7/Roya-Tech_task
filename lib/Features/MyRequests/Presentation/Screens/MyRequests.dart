import 'package:roya_tech_task/Core/app_exports.dart';
import 'package:roya_tech_task/Features/MyRequests/Presentation/Widgets/request_list.dart';
import 'package:roya_tech_task/Features/MyRequests/Presentation/Widgets/search_field.dart';

class MyRequests extends StatelessWidget {
  const MyRequests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.white,
        body: Column(children: [
          _navBraContainer(),
          26.ph,
          _requests(),
          CustomButton(
            color: ColorManager.linearColor2,
            buttonKey: "Invite",
            onTap: () {},
            width: getHorizontalSize(213),
            height: getVerticalSize(52),
            bRadius: AppValues.v10,
          )
        ]),
      ),
    );
  }

  Widget _requests() {
    return Padding(
      padding: getPadding(all: AppPadding.p36),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'My Requests',
          style: mediumTextStyle(
              fontSize: FontSize.s18, color: ColorManager.headerTextColor),
        ),
        12.ph,
        _requestsStatus(),
        26.ph,
        const RequestsList(),
      ]),
    );
  }

  Widget _requestsStatus() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _requestStatusRow(
            image: ImageAssets.confirmedImage,
            iconColor: ColorManager.confirmedIconColor,
            text: 'confirmed'),
        _requestStatusRow(
            image: ImageAssets.pendingImage,
            iconColor: ColorManager.pendingIconColor,
            text: 'pending'),
        _requestStatusRow(
            image: ImageAssets.rejectedImage,
            iconColor: ColorManager.rejectedIconColor,
            text: 'rejected'),
        _requestStatusRow(
            image: ImageAssets.doneImage,
            iconColor: ColorManager.doneIconColor,
            text: 'done'),
      ],
    );
  }

  Widget _requestStatusRow(
      {required String image, required String text, required Color iconColor}) {
    return Row(
      children: [
        CommonImageView(
          imagePath: image,
          height: 20,
          color: iconColor,
        ),
        7.pw,
        Text(
          text,
          style: mediumTextStyle(
              fontSize: FontSize.s13, color: ColorManager.hintTextColor),
        )
      ],
    );
  }

  Widget _navBraContainer() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: getVerticalSize(177),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageAssets.navBarImage),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: getPadding(
                left: AppPadding.p36,
                right: AppPadding.p36,
                top: AppPadding.p49),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_sharp,
                    size: AppValues.v22,
                    color: ColorManager.white,
                  ),
                  Row(
                    children: [
                      CommonImageView(
                        imagePath: ImageAssets.logoImage,
                        height: getVerticalSize(35),
                      ),
                      90.pw,
                      Icon(
                        Icons.search,
                        size: AppValues.v22,
                        color: ColorManager.white,
                      ),
                      24.pw,
                      Icon(
                        Icons.notifications_outlined,
                        size: AppValues.v22,
                        color: ColorManager.white,
                      ),
                    ],
                  )
                ]),
          ),
        ),
        Positioned(bottom: -20, child: SearchField())
      ],
    );
  }
}
