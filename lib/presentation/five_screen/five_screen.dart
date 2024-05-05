import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import '../six_screen/six_screen.dart';
import '../four_screen/four_screen.dart';
class FiveScreen extends StatelessWidget {
  const FiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 33.h,
                        vertical: 54.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgFour,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildThumbsUpSection(context),
                          SizedBox(height: 13.v),
                          Text(
                            "Day 02",
                            style: CustomTextStyles.titleSmallLightblueA400,
                          ),
                          SizedBox(height: 2.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: _buildSpacerSection(
                              context,
                              mealText1: "Meal 01",
                              weightText1: "Weight",
                              nutritionalText1: "Nutritional Values ",
                              mealText2:
                                  "Grilled Chicken Breast \nQuinoa\nSteamed Broccoli",
                              weightText2: "150g\n150g\n150g",
                              nutritionalText2:
                                  "Protein: 46g\nCarbs: 53g\nFat: 3.5g\r",
                              mealText3: "Meal 02",
                              weightText3: "Weight",
                              nutritionalText3: "Nutritional Values ",
                              mealText4: "Salmon  \nBrown Rice\nSliced Almonds",
                              weightText4: "150g\n200g\n30g",
                              nutritionalText4:
                                  "Protein: 34g\nCarbs: 33g\nFat: 12g\r",
                              mealText5: "Meal 03",
                              weightText5: "Weight",
                              nutritionalText5: "Nutritional Values ",
                              mealText6:
                                  "Turkey Burger \nSweet Potato\nGreen Beans",
                              weightText6: "150g\n200g\n150g",
                              nutritionalText6:
                                  "Protein: 34g\nCarbs: 51g\nFat: 8g\r",
                            ),
                          ),
                          SizedBox(height: 13.v),
                          Text(
                            "Day 03",
                            style: CustomTextStyles.titleSmallLightblueA400,
                          ),
                          SizedBox(height: 13.v)
                        ],
                      ),
                    ),
                  ),
                  _buildFiMessageSection(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThumbsUpSection(BuildContext context) {
    return SizedBox(
      height: 304.v,
      width: 361.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 13.h),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "Saved",
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Day 01",
                  style: CustomTextStyles.titleSmallLightblueA400,
                ),
                SizedBox(height: 2.v),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.v),
                  decoration: AppDecoration.outlineBlack9001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder9,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 4.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Meal 01",
                                  style: theme.textTheme.labelLarge,
                                ),
                                SizedBox(height: 3.v),
                                SizedBox(
                                  width: 121.h,
                                  child: Text(
                                    "Grilled Chicken Breast \nQuinoa\nSteamed Broccoli",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 178.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Text(
                                          "Weight",
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ),
                                      Text(
                                        "Nutritional Values ",
                                        style: theme.textTheme.labelLarge,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 2.v),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 24.h,
                                      child: Text(
                                        "150g\n150g\n150g",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                    Container(
                                      width: 64.h,
                                      margin: EdgeInsets.only(left: 42.h),
                                      child: Text(
                                        "Protein: 46g\nCarbs: 53g\nFat: 3.5g\r",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Divider(),
                      SizedBox(height: 2.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: _buildMealSection(
                          context,
                          mealText: "Meal 02",
                          weightTwo: "Weight",
                          nutritionalTwo: "Nutritional Values ",
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          right: 67.h,
                        ),
                        child: _buildTurkeyBurgerSection(
                          context,
                          menuText1: "Salmon  \nBrown Rice\nSliced Almonds",
                          menuText2: "150g\n200g\n30g",
                          menuText3: "Protein: 34g\nCarbs: 33g\nFat: 12g\r",
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Divider(),
                      SizedBox(height: 2.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: _buildMealSection(
                          context,
                          mealText: "Meal 03",
                          weightTwo: "Weight",
                          nutritionalTwo: "Nutritional Values ",
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          right: 67.h,
                        ),
                        child: _buildTurkeyBurgerSection(
                          context,
                          menuText1:
                              "Turkey Burger \nSweet Potato\nGreen Beans",
                          menuText2: "150g\n200g\n150g",
                          menuText3: "Protein: 34g\nCarbs: 51g\nFat: 8g\r",
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiMessageSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 256.v,
        width: 429.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 34.h),
              child: _buildSpacerSection(
                context,
                mealText1: "Meal 01",
                weightText1: "Weight",
                nutritionalText1: "Nutritional Values ",
                mealText2: "Grilled Chicken Breast \nQuinoa\nSteamed Broccoli",
                weightText2: "150g\n150g\n150g",
                nutritionalText2: "Protein: 46g\nCarbs: 53g\nFat: 3.5g\r",
                mealText3: "Meal 02",
                weightText3: "Weight",
                nutritionalText3: "Nutritional Values ",
                mealText4: "Salmon  \nBrown Rice\nSliced Almonds",
                weightText4: "150g\n200g\n30g",
                nutritionalText4: "Protein: 34g\nCarbs: 33g\nFat: 12g\r",
                mealText5: "Meal 03",
                weightText5: "Weight",
                nutritionalText5: "Nutritional Values ",
                mealText6: "Turkey Burger \nSweet Potato\nGreen Beans",
                weightText6: "150g\n200g\n150g",
                nutritionalText6: "Protein: 34g\nCarbs: 51g\nFat: 8g\r",
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 13.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 89.h,
                  vertical: 24.v,
                ),
                decoration: AppDecoration.gradientBlackToPink,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12.v),
                    Container(
                      margin: EdgeInsets.only(right: 15.h),
                      padding: EdgeInsets.symmetric(vertical: 11.v),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder39,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFiMessageSquareBlack900,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                              top: 17.v,
                              bottom: 16.v,
                            ),
                          ),
                          CustomIconButton(
                            height: 57.adaptSize,
                            width: 57.adaptSize,
                            padding: EdgeInsets.all(16.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFiBookmarkBlack900,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFiGitlab,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                              top: 17.v,
                              bottom: 16.v,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildMealSection(
    BuildContext context, {
    required String mealText,
    required String weightTwo,
    required String nutritionalTwo,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          mealText,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Spacer(),
        Text(
          weightTwo,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 21.h),
          child: Text(
            nutritionalTwo,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildTurkeyBurgerSection(
    BuildContext context, {
    required String menuText1,
    required String menuText2,
    required String menuText3,
  }) {
    return Row(
      children: [
        SizedBox(
          width: 75.h,
          child: Text(
            menuText1,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(
          flex: 62,
        ),
        SizedBox(
          width: 27.h,
          child: Text(
            menuText2,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(
          flex: 37,
        ),
        SizedBox(
          width: 64.h,
          child: Text(
            menuText3,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildSpacerSection(
    BuildContext context, {
    required String mealText1,
    required String weightText1,
    required String nutritionalText1,
    required String mealText2,
    required String weightText2,
    required String nutritionalText2,
    required String mealText3,
    required String weightText3,
    required String nutritionalText3,
    required String mealText4,
    required String weightText4,
    required String nutritionalText4,
    required String mealText5,
    required String weightText5,
    required String nutritionalText5,
    required String mealText6,
    required String weightText6,
    required String nutritionalText6,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    mealText1,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  Spacer(),
                  Text(
                    weightText1,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21.h),
                    child: Text(
                      nutritionalText1,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 67.h,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 121.h,
                  child: Text(
                    mealText2,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                Container(
                  width: 24.h,
                  margin: EdgeInsets.only(left: 21.h),
                  child: Text(
                    weightText2,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 64.h,
                  child: Text(
                    nutritionalText2,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Divider(),
          SizedBox(height: 2.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    mealText3,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  Spacer(),
                  Text(
                    weightText3,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21.h),
                    child: Text(
                      nutritionalText3,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 67.h,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 84.h,
                  child: Text(
                    mealText4,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                Spacer(
                  flex: 59,
                ),
                SizedBox(
                  width: 27.h,
                  child: Text(
                    weightText4,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                Spacer(
                  flex: 40,
                ),
                SizedBox(
                  width: 64.h,
                  child: Text(
                    nutritionalText4,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Divider(),
          SizedBox(height: 2.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    mealText5,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  Spacer(),
                  Text(
                    weightText5,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21.h),
                    child: Text(
                      nutritionalText5,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 67.h,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 75.h,
                  child: Text(
                    mealText6,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                Spacer(
                  flex: 62,
                ),
                SizedBox(
                  width: 27.h,
                  child: Text(
                    weightText6,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                Spacer(
                  flex: 37,
                ),
                SizedBox(
                  width: 64.h,
                  child: Text(
                    nutritionalText6,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
