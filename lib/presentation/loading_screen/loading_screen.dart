import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
          child: SizedBox(
            child: CustomImageView(
              imagePath: ImageConstant.imgGrid,
              height: 10.v,
              width: 62.h,
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
