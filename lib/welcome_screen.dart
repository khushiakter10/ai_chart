// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
//
// import 'common_widget/custom_button.dart';
// import 'constants/text_font_style.dart';
// import 'gen/assets.gen.dart';
// import 'gen/colors.gen.dart';
// import 'helpers/all_routes.dart';
// import 'helpers/navigation_service.dart';
// import 'helpers/ui_helpers.dart';
//
// class WelcomeScreen extends StatefulWidget {
//   const WelcomeScreen({super.key});
//
//   @override
//   State<WelcomeScreen> createState() => _WelcomeScreenState();
// }
//
// class _WelcomeScreenState extends State<WelcomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage(Assets.images.onboardingCopy.path),
//                 fit: BoxFit.cover)),
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.w),
//           child: Column(
//             // crossAxisAlignment: CrossAxisAlignment.center,
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               UIHelper.verticalSpace(50.h),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     Assets.images.rectangle.path,
//                     height: 24.h,
//                   ),
//                   UIHelper.horizontalSpace(85.w),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Image.asset(
//                         Assets.images.samohval.path,
//                         height: 11.h,
//                       ),
//                       UIHelper.verticalSpace(7.h),
//                       Image.asset(
//                         Assets.images.education.path,
//                         height: 11.h,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               UIHelper.verticalSpace(210.h),
//               Center(
//                 child: Column(
//                   mainAxisAlignment:
//                       MainAxisAlignment.center, // পুরো Column-কে Center-এ আনবে
//                   crossAxisAlignment: CrossAxisAlignment
//                       .center, // Column-এর মধ্যে সবকিছু Center-এ রাখবে
//                   children: [
//                     Text(
//                       "Welcome",
//                       style: TextFontStyle.c00000034,
//                       textAlign: TextAlign.center, // Text Center-এ দেখাবে
//                     ),
//                     UIHelper.verticalSpace(20.h),
//                     Text(
//                       "In the lessons we learn",
//                       style: TextFontStyle.c00000015w400,
//                       textAlign: TextAlign.center,
//                     ),
//                     Text(
//                       "new words.",
//                       style: TextFontStyle.c00000015w400,
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               ),
//               UIHelper.verticalSpace(15.h),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding:
//                         EdgeInsets.symmetric(vertical: 2.h, horizontal: 27.w),
//                     decoration: BoxDecoration(
//                         color: AppColors.c494B48,
//                         borderRadius: BorderRadius.circular(35.r),
//                         border: Border.all(color: Colors.transparent)),
//                   ),
//                   UIHelper.horizontalSpace(3.w),
//                   Container(
//                     padding:
//                         EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
//                     decoration: BoxDecoration(
//                       color: AppColors.c494B48,
//                       borderRadius: BorderRadius.circular(35.r),
//                       border: Border.all(color: Colors.transparent),
//                     ),
//                   ),
//                   UIHelper.horizontalSpace(3.w),
//                   Container(
//                     padding:
//                         EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
//                     decoration: BoxDecoration(
//                       color: AppColors.c494B48,
//                       borderRadius: BorderRadius.circular(35.r),
//                       border: Border.all(color: Colors.transparent),
//                     ),
//                   )
//                 ],
//               ),
//               UIHelper.verticalSpace(40.h),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   customeButton(
//                     borderColor: Colors.transparent,
//                       name: "Continue",
//                       onCallBack: () {
//                       NavigationService.navigateTo(Routes.signInScreen);
//                       },
//                       height: 44.h,
//                       minWidth: 182.w,
//                       borderRadius: 22.r,
//                       color: AppColors.cFBD301,
//                       textStyle: TextFontStyle.cFFFFFFw700,
//                       context: context),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
