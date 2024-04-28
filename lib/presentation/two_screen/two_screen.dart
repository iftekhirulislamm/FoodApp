import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class TwoScreen extends StatelessWidget {
  TwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            color: appTheme.pink5001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgOne,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 59.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //SizedBox(height: 33.v),
                      //SizedBox(height: 30.0),
                      Container(
                        width: 209.h,
                        height: 60.v,
                        margin: EdgeInsets.only(left: 1.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Get started\n",
                                style: theme.textTheme.displaySmall?.copyWith(
                                fontSize: 26.0,
                                ),
                              ),
                              TextSpan(
                                text: " ",
                                style: CustomTextStyles.headlineMediumSemiBold,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      //SizedBox(height: 32.v),
                     // Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 191.h,
                          child: Text(
                            "Create a new account\n ",
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleMedium!.copyWith(
                              decoration: TextDecoration.underline,
                            ),

                          ),
                        ),
                      ),
                      SizedBox(height: 22.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "Your Name",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: CustomTextFormField(
                          controller: nameController,
                          hintText: "Lorem ipsum",
                        ),
                      ),
                      SizedBox(height: 11.v),
                      _buildEmailSection(context),
                      SizedBox(height: 11.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "Password",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: CustomTextFormField(
                          controller: passwordController,
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      _buildPhoneNumberSection(context),
                      SizedBox(height: 34.v),
                      CustomOutlinedButton(
                        width: 215.h,
                        text: "Sign Up",
                        alignment: Alignment.center,
                      ),
                      SizedBox(height: 10.v),
                      Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            onTapTxtHaveanaccount(context);
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "have an account? ",
                                  style: theme.textTheme.bodyMedium,
                                ),
                                TextSpan(
                                  text: "Sign In Now",
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 28.v),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 290.h,
                          margin: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Text(
                            "By continuing, you agree to Health Nourish's Terms of Service and Privacy Policy, and to receive periodic emails with updates.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Email",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: emailController,
            hintText: "you@example.com",
            textInputType: TextInputType.emailAddress,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "Phone Number",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: phoneNumberController,
            hintText: "+8801XXXXXXXXX",
            textInputAction: TextInputAction.done,
          )
        ],
      ),
    );
  }

  /// Navigates to the oneScreen when the action is triggered.
  onTapTxtHaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.oneScreen);
  }
}
