



import '../../../../Core/app_exports.dart';

class RequestsList extends StatelessWidget {
  const RequestsList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(3, (index) {
          return Container(
            decoration: AppConstants.boxDecoration,
            margin: getMargin(bottom: 18),
            padding: getPadding(all: 18),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: ColorManager.profileBorderColor)),
                  ),
                  12.pw,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mohamed Mustafa",
                        style: mediumTextStyle(
                            fontSize: FontSize.s15, color: ColorManager.black),
                      ),
                      5.ph,
                      Text(
                        "Executive Director of OIU Company",
                        style: lightTextStyle(
                            fontSize: FontSize.s12,
                            color: ColorManager.profileDescColor),
                      )
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    Icons.edit,
                    size: 20,
                    color: ColorManager.black,
                  )
                ],
              ),
              21.ph,
              Row(
                children: [
                CustomButton(
                      height: getVerticalSize(25),
                      width: getHorizontalSize(72),
                      fontsize: FontSize.s10,
                      color:index==2?ColorManager.doneIconColor:ColorManager.pendingIconColor,
                      buttonKey: index==2?'Approved':"Postpone",
                      onTap: () {}),
                  10.pw,
                  CustomButton(
                      height: getVerticalSize(25),
                      width: getHorizontalSize(72),
                      fontsize: FontSize.s10,
                      color: index==2? ColorManager
                          .profileDescColor:ColorManager.rejectedIconColor,
                      buttonKey: "Cancel",
                      onTap: () {}),
                  const Spacer(),
                  Text(
                    '17/10/2022 09:30  PM',
                    style: mediumTextStyle(
                        fontSize: FontSize.s12,
                        color: ColorManager.profileBorderColor),
                  )
                ],
              )
            ]),
          );
        }));

  }
}