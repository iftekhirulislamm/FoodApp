import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class OneScreen extends StatelessWidget {
  OneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.red10002,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.red10002,
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
              child: SizedBox(
                height: SizeUtils.height,
                child: Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 59.h,
                      vertical: 89.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //this commented part was originated by dhiwise
                        //Spacer(),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Container(
                        //     width: 223.h,
                        //     margin: EdgeInsets.only(
                        //       left: 2.h,
                        //       right: 86.h,
                        //     ),
                        //     child: Text(
                        //       "Welcome to \n ",
                        //       maxLines: null,
                        //      overflow: TextOverflow.ellipsis,
                        //       style: theme.textTheme.headlineLarge,
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(height: 1.0),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Container(
                        //     width: 272.h,
                        //     margin: EdgeInsets.only(
                        //       left: 2.h,
                        //       right: 37.h,
                        //     ),
                        //     child: Text(
                        //       "Health Nourish App\n ",
                        //       maxLines: null,
                        //       overflow: TextOverflow.ellipsis,
                        //       style: theme.textTheme.headlineMedium,
                        //     ),
                        //   ),
                        // ),


                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 2.h, right: 37.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Welcome to\n",
                                    style: theme.textTheme.headlineLarge?.copyWith(
                                      fontWeight: FontWeight.bold, // Set the font weight to bold
                                      fontSize: 26.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Health Nourish App",
                                    style: theme.textTheme.headlineLarge?.copyWith(
                                      fontWeight: FontWeight.w600, // Set the font weight to semi-bold (600)
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 49.v),
                        SizedBox(
                          width: 197.h,
                          child: Text(
                            "Sign in to your account\n ",
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleMedium!.copyWith(

                            ),
                          ),
                        ),
                        SizedBox(height: 16.v),
                        _buildEmailSection(context),
                        SizedBox(height: 16.v),
                        _buildPasswordSection(context),
                        SizedBox(height: 64.v),
                        CustomOutlinedButton(
                          height: 64.v,
                          width: 215.h,
                          text: "Sign In",
                          buttonStyle: CustomButtonStyles.outlineBlueGray,
                        ),
                        SizedBox(height: 11.v),
                        GestureDetector(
                          onTap: () {
                            onTapTxtDonthaveanaccountsign(context);
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Don't have an account? ",
                                  style: theme.textTheme.bodyMedium!.copyWith(

                                  ),
                                ),
                                TextSpan(
                                  text: "Sign Up Now",
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 140.v),
                        Container(
                          width: 290.h,
                          margin: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Text(
                            "By continuing, you agree to Health Nourish's Terms of Service and Privacy Policy, and to receive periodic emails with updates.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall,
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
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: emailController,
            hintText: "you@example.com",
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 22.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "Password",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Text(
                  "Forgot Password?",
                  style: theme.textTheme.bodyMedium!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            controller: passwordController,
            textInputAction: TextInputAction.done,
            obscureText: true,
          )
        ],
      ),
    );
  }

  /// Navigates to the twoScreen when the action is triggered.
  onTapTxtDonthaveanaccountsign(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.twoScreen);
  }

}
