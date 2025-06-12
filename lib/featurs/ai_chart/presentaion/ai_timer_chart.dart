//
// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:rahatscoaching_app/assets_helper/app_colors.dart';
// import 'package:rahatscoaching_app/assets_helper/app_fonts.dart';
// import 'package:rahatscoaching_app/assets_helper/app_icons.dart';
// import 'package:rahatscoaching_app/features/update_home/statestic/widget/appbar_widget.dart';
// import 'package:rahatscoaching_app/features/update_home/statestic/widget/kaloristack_widget.dart';
// import 'package:rahatscoaching_app/features/update_home/statestic/widget/viktdata_widget.dart';
// import 'package:rahatscoaching_app/helpers/all_routes.dart';
// import 'package:rahatscoaching_app/helpers/navigation_service.dart';
// import 'package:rahatscoaching_app/helpers/ui_helpers.dart';
//
// class StatesticScreen extends StatefulWidget {
//   const StatesticScreen({super.key});
//
//   @override
//   State<StatesticScreen> createState() => _StatesticScreenState();
// }
//
// class _StatesticScreenState extends State<StatesticScreen> {
//
//   final maxY = 20000.0;
//   final fixedY = 15000.0;
//
//   int selectedIndex = -1;
//
//   final List<String> labels = [
//     '2 timmar\n15minuter',
//     '2\ntimmar',
//     '2 timmar\n30 minuter',
//     '3\ntimmar',
//     '2 timmar\n40 minuter',
//     '2\ntimmar',
//     '2 timmar\n 35 minuter',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.cFFFFFF,
//       appBar: AppBarWidget(text: 'Analys'),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ViktdataWidget(text: 'Viktdata'),
//             UIHelper.verticalSpace(16.h),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: AppColor.cE0E1E3),
//                   borderRadius: BorderRadius.circular(20.r),
//                   color: AppColor.cFFFCFB,
//                   boxShadow: [
//                     BoxShadow(
//                       color: AppColor.cFFFFFF,
//                       blurRadius: 8.r,
//                       spreadRadius: 2.r,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 padding: EdgeInsets.all(16.r),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Träningsaktivitet',
//                       style: TextFontStyle.headline16c212738Figtreew500,
//                     ),
//                     UIHelper.verticalSpace(16.h),
//                     SizedBox(
//                       height: 300.h,
//                       width: double.infinity,
//                       child: Stack(
//                         children: [
//                           BarChart(
//                             BarChartData(
//                               alignment: BarChartAlignment.spaceAround,
//                               maxY: maxY,
//                               barTouchData: BarTouchData(
//                                 enabled: true,
//                                 touchTooltipData: BarTouchTooltipData(
//                                   getTooltipItem: (_, __, ___, ____) => null,
//                                 ),
//
//                                 touchCallback: (event, response) {
//                                   if (response != null &&
//                                       response.spot != null &&
//                                       event is FlTapUpEvent) {
//                                     setState(() {
//                                       selectedIndex = response.spot!.touchedBarGroupIndex;
//                                     });
//                                   }
//                                 },
//                               ),
//                               titlesData: FlTitlesData(
//                                 show: true,
//                                 bottomTitles: AxisTitles(
//                                   sideTitles: SideTitles(
//                                     showTitles: true,
//                                     getTitlesWidget: (value, meta) {
//                                       const days = ['Sön', 'Mån', 'Tis', 'Ons', 'Tor', 'Fre', 'Lör'];
//                                       if (value.toInt() < 0 || value.toInt() >= days.length) {
//                                         return const SizedBox();
//                                       }
//                                       return Padding(
//                                         padding:  EdgeInsets.only(top: 8.sp),
//                                         child: Text(
//                                           days[value.toInt()],
//                                           style: TextFontStyle.headline11c878A94Satoshiw500.copyWith(fontSize: 10.sp),
//                                         ),
//                                       );
//                                     },
//                                   ),
//                                 ),
//                                 leftTitles: AxisTitles(
//                                   sideTitles: SideTitles(showTitles: false),
//                                 ),
//                                 topTitles: AxisTitles(
//                                   sideTitles: SideTitles(showTitles: false),
//                                 ),
//                                 rightTitles: AxisTitles(
//                                   sideTitles: SideTitles(showTitles: false),
//                                 ),
//                               ),
//                               gridData: FlGridData(
//                                 show: true,
//                                 drawVerticalLine: false,
//                                 horizontalInterval: 5000,
//                                 getDrawingHorizontalLine: (value) {
//                                   return FlLine(
//                                     color: AppColor.cE0E1E3,
//                                     strokeWidth: 0,
//                                   );
//                                 },
//                               ),
//                               borderData: FlBorderData(show: false),
//                               barGroups: List.generate(7, (index) {
//                                 double blueY = index.isEven ? fixedY * 0.4 : fixedY * 0.8;
//
//                                 final bool isSelected = selectedIndex == index;
//
//                                 return BarChartGroupData(
//                                   x: index,
//                                   barRods: [
//                                     BarChartRodData(
//                                       toY: fixedY,
//                                       width: 35.w,
//                                       borderRadius: BorderRadius.circular(20.r),
//                                       rodStackItems: [
//                                         BarChartRodStackItem(
//                                           0,
//                                           blueY,
//                                           isSelected ? AppColor.cFFF080 : AppColor.cCEE9FF,
//                                         ),
//                                         BarChartRodStackItem(
//                                           blueY,
//                                           fixedY,
//                                           AppColor.cF4F5F5,
//                                         ),
//                                       ],
//                                       borderSide: isSelected
//                                           ? BorderSide(color: AppColor.cE3D46B, width: 2.w)
//                                           : BorderSide.none,
//                                     ),
//                                   ],
//                                 );
//                               }),
//                             ),
//                           ),
//                           Positioned.fill(
//                             child: LayoutBuilder(
//                               builder: (context, constraints) {
//                                 return Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                   children: List.generate(7, (index) {
//                                     double barHeight = (fixedY / maxY) * 300.h;
//                                     return Container(
//                                       width: 20.w,
//                                       height: 250.h,
//                                       alignment: Alignment.bottomCenter,
//                                       child: Padding(
//                                         padding: EdgeInsets.only(bottom: barHeight / 2 - 10.h),
//                                         child: Text(
//                                           labels[index],
//                                           textAlign: TextAlign.center,
//                                           style: TextFontStyle.headline11c878A94Satoshiw500.copyWith(
//                                             fontSize: 10.sp,
//                                             color: selectedIndex == index
//                                                 ? TextFontStyle.headline16c212738Figtreew500.color
//                                                 : AppColor.c878A94,
//                                           ),
//                                         ),
//                                       ),
//                                     );
//                                   }),
//                                 );
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             UIHelper.verticalSpace(16.h),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: AppColor.cE0E1E3),
//                   borderRadius: BorderRadius.circular(20.r),
//                   color: AppColor.cFFFCFB,
//                   boxShadow: [
//                     BoxShadow(
//                       color: AppColor.cE0E1E3,
//                       spreadRadius: 2.r,
//                       blurRadius: 5.r,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 padding: EdgeInsets.all(16.sp),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Kaloristatistik',
//                           style: TextFontStyle.headline16c212738Figtreew500,
//                         ),
//                         SvgPicture.asset(AppIcons.doticon, height: 24.h),
//                       ],
//                     ),
//                     UIHelper.verticalSpace(16.h),
//                     Row(
//                       children: [
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                               vertical: 10.h, horizontal: 10.w),
//                           decoration: BoxDecoration(
//                               color: AppColor.cCEE9FF,
//                               borderRadius: BorderRadius.circular(5.r)),
//                         ),
//                         UIHelper.horizontalSpace(6.w),
//                         Text(
//                           'Aktiva kalorier',
//                           style: TextFontStyle.headline12c878A94Figtreew400
//                               .copyWith(fontSize: 11.sp),
//                         ),
//                         UIHelper.horizontalSpace(16.w),
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                               vertical: 10.h, horizontal: 10.w),
//                           decoration: BoxDecoration(
//                               color: AppColor.cEFEFF0,
//                               borderRadius: BorderRadius.circular(5.r)),
//                         ),
//                         UIHelper.horizontalSpace(6.w),
//                         Text(
//                           'Vila kalorier',
//                           style: TextFontStyle.headline12c878A94Figtreew400
//                               .copyWith(fontSize: 11.sp),
//                         ),
//                       ],
//                     ),
//                     UIHelper.verticalSpace(16.h),
//                     SizedBox(
//                       height: 200.h,
//                       width: double.infinity,
//                       child: BarChart(
//                         BarChartData(
//                           alignment: BarChartAlignment.spaceAround,
//                           maxY: 20000,
//                           barTouchData: BarTouchData(enabled: false),
//                           titlesData: FlTitlesData(
//                             show: true,
//                             bottomTitles: AxisTitles(
//                               sideTitles: SideTitles(
//                                 showTitles: true,
//                                 getTitlesWidget: (value, meta) {
//                                   const days = [
//                                     'Sön',
//                                     'Mån',
//                                     'Tis',
//                                     'Ons',
//                                     'Tor',
//                                     'Fre',
//                                     'Lör'
//                                   ];
//                                   return Padding(
//                                     padding: const EdgeInsets.only(top: 8.0),
//                                     child: Text(
//                                       days[value.toInt()],
//                                       style: const TextStyle(fontSize: 12),
//                                     ),
//                                   );
//                                 },
//                               ),
//                             ),
//                             leftTitles: AxisTitles(
//                               sideTitles: SideTitles(
//                                 showTitles: true,
//                                 reservedSize: 40,
//                                 interval: 5000,
//                                 getTitlesWidget: (value, meta) {
//                                   return Text(
//                                     '${value.toInt()}',
//                                     style: const TextStyle(fontSize: 12),
//                                   );
//                                 },
//                               ),
//                             ),
//                             topTitles:
//                             const AxisTitles(sideTitles: SideTitles(showTitles: false)),
//                             rightTitles:
//                             const AxisTitles(sideTitles: SideTitles(showTitles: false)),
//                           ),
//                           gridData: FlGridData(
//                             show: true,
//                             drawVerticalLine: false,
//                             horizontalInterval: 5000,
//                             getDrawingHorizontalLine: (value) {
//                               return FlLine(
//                                 color: AppColor.cE0E1E3,
//                                 strokeWidth: 1.w,
//                               );
//                             },
//                           ),
//                           borderData: FlBorderData(show: false),
//                           barGroups: [
//                             BarChartGroupData(
//                               x: 0,
//                               barRods: [
//                                 BarChartRodData(
//                                   toY: 11000,
//                                   width: 20.w,
//                                   borderRadius: BorderRadius.circular(16.r),
//                                   rodStackItems: [
//                                     BarChartRodStackItem(6500, 13000, AppColor.cEFEFF0),
//                                     BarChartRodStackItem(0, 6500, AppColor.cCEE9FF),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             BarChartGroupData(
//                               x: 1,
//                               barRods: [
//                                 BarChartRodData(
//                                   toY: 13000,
//                                   width: 20.w,
//                                   borderRadius: BorderRadius.circular(16.r),
//                                   rodStackItems: [
//                                     BarChartRodStackItem(6500, 13000, AppColor.cEFEFF0),
//                                     BarChartRodStackItem(0, 6500, AppColor.cCEE9FF),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             BarChartGroupData(
//                               x: 2,
//                               barRods: [
//                                 BarChartRodData(
//                                   toY: 18000,
//                                   width: 20.w,
//                                   borderRadius: BorderRadius.circular(16.r),
//                                   rodStackItems: [
//                                     BarChartRodStackItem(6500, 18000, AppColor.cEFEFF0),
//                                     BarChartRodStackItem(0, 11000, AppColor.cCEE9FF),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             BarChartGroupData(
//                               x: 3,
//                               barRods: [
//                                 BarChartRodData(
//                                   toY: 17000,
//                                   width: 20.w,
//                                   borderRadius: BorderRadius.circular(16.r),
//                                   rodStackItems: [
//                                     BarChartRodStackItem(6500, 17000, AppColor.cEFEFF0),
//                                     BarChartRodStackItem(0, 11000, AppColor.cFFF080),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             BarChartGroupData(
//                               x: 4,
//                               barRods: [
//                                 BarChartRodData(
//                                   toY: 16000,
//                                   width: 20.w,
//                                   borderRadius: BorderRadius.circular(16.r),
//                                   rodStackItems: [
//                                     BarChartRodStackItem(6500, 16000, AppColor.cEFEFF0),
//                                     BarChartRodStackItem(0, 12000, AppColor.cCEE9FF),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             BarChartGroupData(
//                               x: 5,
//                               barRods: [
//                                 BarChartRodData(
//                                   toY: 12000,
//                                   color: Color(0xFFCEE9FF),
//                                   width: 20.w,
//                                   borderRadius: BorderRadius.circular(16.r),
//                                   rodStackItems: [
//                                     BarChartRodStackItem(6500, 12000, AppColor.cEFEFF0),
//                                     BarChartRodStackItem(0, 1000, AppColor.cCEE9FF),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             BarChartGroupData(
//                               x: 6,
//                               barRods: [
//                                 BarChartRodData(
//                                   toY: 14000,
//                                   color: Color(0xFFCEE9FF),
//                                   width: 20.w,
//                                   borderRadius: BorderRadius.circular(16.r),
//                                   rodStackItems: [
//                                     BarChartRodStackItem(6500, 18000, AppColor.cEFEFF0),
//                                     BarChartRodStackItem(0, 1100, AppColor.cCEE9FF),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     UIHelper.verticalSpace(16.h),
//                     GestureDetector(
//                       onTap: () {
//                         NavigationService.navigateTo(Routes.categoriseMealScreen);
//                       },
//                       child: KaloristackWidget(caloriText: '', kalori: 'Kalorier'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
