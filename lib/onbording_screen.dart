// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:khusi/common_widget/auth_button.dart';
// import 'package:khusi/constants/text_font_style.dart';
// import 'package:khusi/gen/colors.gen.dart';
// import 'package:khusi/helpers/ui_helpers.dart';
// import 'gen/assets.gen.dart';
//
// class OnbordingScreen extends StatelessWidget {
//   const OnbordingScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Container(
//       decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage(Assets.images.image.path), fit: BoxFit.cover)),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(25),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Image.asset(Assets.images.circle.path,
//                         height: 200.h, width: 90.w),
//                     Image.asset(
//                       Assets.images.kit,
//                       height: 100.h,
//                       width: 50.w,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   width: 350.w,
//                   child: Center(
//                       child: Text(
//                     "Agility Academy- the Agility app!",
//                     style: TextFontStyle.text22c4D4D4Dw600,
//                   )),
//                 ),
//                 UIHelper.verticalSpace(30),
//                 SizedBox(
//                   // width: 350,
//                   child: Center(
//                     child: Text(
//                         "Here you can find online courses & modules agility training- the fun!",
//                         style: TextFontStyle.text13c503559w400),
//                   ),
//                 ),
//                 UIHelper.verticalSpace(15),
//                 SizedBox(
//                   width: 350.w,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ClipRRect(
//                           borderRadius: BorderRadius.all(Radius.circular(6.r)),
//                           child: Image.asset(
//                             Assets.images
//                                 .circle.path,
//                             height: 280.34.h,
//                             width: 180.74.w,
//                             fit: BoxFit.fill,
//                           )),
//                       UIHelper.horizontalSpace(15),
//                       Expanded(
//                         child: Column(
//                           children: [
//                             ClipRRect(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(6.r)),
//                               child: Image.asset(
//                                 Assets
//                                     .images.men,
//                                 height: 114.36.h,
//                                 width: 135.27.w,
//                                 fit: BoxFit.fill,
//                               ),
//                             ),
//                             UIHelper.verticalSpace(10.h),
//                             ClipRRect(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(6.r)),
//                               child: Image.asset(
//                                 Assets
//                                     .images
//                                     .shop,
//
//                                 height: 153.65.h,
//                                 width: 135.27.w,
//                                 fit: BoxFit.fill,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 UIHelper.verticalSpace(30.h),
//                 SizedBox(
//                   width: 350,
//                   child: Column(
//                     children: [
//                       AuthCustomeButton(
//                           name: "Continue",
//                           onCallBack: () {},
//                           height: 58.h,
//                           minWidth: 307,
//                           borderRadius: 15,
//                           color: AppColors.c503559,
//                           textStyle: TextFontStyle.text01cFFF2C2,
//                           context: context)
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
