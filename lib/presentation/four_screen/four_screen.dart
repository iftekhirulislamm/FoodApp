import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable
import '../six_screen/six_screen.dart';
// ignore_for_file: must_be_immutable
class FourScreen extends StatelessWidget {
  FourScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.pink50,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgFour,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 137.h,
                    margin: EdgeInsets.only(left: 53.h),
                    child: Text(
                      "Chat with our\n ",
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                Container(
                  width: 319.h,
                  margin: EdgeInsets.only(
                    left: 52.h,
                    right: 58.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "AI Based Health Assistant\n",
                          style: theme.textTheme.headlineSmall,
                        ),
                        TextSpan(
                          text: " ",
                          style: CustomTextStyles.headlineSmallSemiBold,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 21.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 48.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder9,
                  ),
                  child: SizedBox(
                    width: 305.h,
                    child: Text(
                      "I'd be glad to help you create a muscle-building diet plan for seven days! In order to make sure each meal provides the necessary nutrients, I've designed three meals per day which are slightly diff erent, however, they all contain a good balance of protein, complex carbohydrates, healthy fats, and essential vitamins and minerals. Please note that each meal should be paired with adequate portio of fruits, vegetables, and whole grains to ensure a well-balanced diet.",
                      maxLines: 9,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: CustomTextStyles.bodySmall_1,
                    ),
                  ),
                ),
                SizedBox(height: 39.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 31.h),
                  child: CustomTextFormField(
                    controller: messageController,
                    hintText: "type your message",
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(12.h, 7.v, 28.h, 7.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSave,
                        height: 33.adaptSize,
                        width: 33.adaptSize,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 49.v,
                    ),
                  ),
                ),
                _buildColumnFiMessage(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnFiMessage(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 90.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.gradientPrimaryContainerToPink,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.v),
          Container(
            margin: EdgeInsets.only(right: 14.h),
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlinePrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder39,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,


              children: [
                CustomIconButton(
                  height: 57.adaptSize,
                  width: 57.adaptSize,
                  padding: EdgeInsets.all(16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFiMessageSquare,
                  ),
                ),
                Spacer(
                  flex: 40,
                ),

                CustomImageView(
                  imagePath: ImageConstant.imgFiBookmark,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 17.v,
                    bottom: 16.v,
                  ),
                ),
                Spacer(
                  flex: 59,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SixScreen(),
                      ),
                    );
                  },
                    child : CustomImageView(
                      imagePath: ImageConstant.imgFiGitlab,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        top: 17.v,
                        right: 16.h,
                        bottom: 16.v,
                      ),
                    )
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
