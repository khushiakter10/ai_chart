// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rahatscoaching_app/assets_helper/app_colors.dart';
// import 'package:rahatscoaching_app/assets_helper/app_fonts.dart';
// import 'package:rahatscoaching_app/helpers/ui_helpers.dart';
//
// class ScreenKhusi extends StatefulWidget {
//   const ScreenKhusi({super.key});
//
//   @override
//   State<ScreenKhusi> createState() => _ScreenKhusiState();
// }
//
// class _ScreenKhusiState extends State<ScreenKhusi> {
//   final maxY = 20000.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           UIHelper.verticalSpace(100.h),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
//             child: Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: AppColor.cE0E1E3),
//                 borderRadius: BorderRadius.circular(20.r),
//                 color: AppColor.cFFFCFB,
//                 boxShadow: [
//                   BoxShadow(
//                     color: AppColor.cFFFFFF,
//                     blurRadius: 8.r,
//                     spreadRadius: 2.r,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//               padding: EdgeInsets.all(16.r),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Träningsaktivitet',
//                     style: TextFontStyle.headline16c212738Figtreew500,
//                   ),
//                   UIHelper.verticalSpace(16.h),
//                   SizedBox(
//                     height: 300.h,
//                     width: double.infinity,
//                     child: BarChart(
//                       BarChartData(
//                         alignment: BarChartAlignment.spaceAround,
//                         maxY: maxY,
//                         barTouchData: BarTouchData(enabled: false),
//                         titlesData: FlTitlesData(
//                           show: true,
//                           bottomTitles: AxisTitles(
//                             sideTitles: SideTitles(
//                               showTitles: true,
//                               getTitlesWidget: (value, meta) {
//                                 const days = ['Sön', 'Mån', 'Tis', 'Ons', 'Tor', 'Fre', 'Lör'];
//                                 if (value.toInt() < 0 || value.toInt() >= days.length) {
//                                   return const SizedBox();
//                                 }
//                                 return Padding(
//                                   padding: const EdgeInsets.only(top: 8.0),
//                                   child: Text(
//                                     days[value.toInt()],
//                                     style: TextStyle(fontSize: 12.sp),
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                           leftTitles: AxisTitles(
//                             sideTitles: SideTitles(showTitles: false),
//                           ),
//                           topTitles: AxisTitles(
//                             sideTitles: SideTitles(showTitles: false),
//                           ),
//                           rightTitles: AxisTitles(
//                             sideTitles: SideTitles(showTitles: false),
//                           ),
//                         ),
//                         gridData: FlGridData(
//                           show: true,
//                           drawVerticalLine: false,
//                           horizontalInterval: 5000,
//                           getDrawingHorizontalLine: (value) {
//                             return FlLine(
//                               color: AppColor.cE0E1E3,
//                               strokeWidth: 1,
//                             );
//                           },
//                         ),
//                         borderData: FlBorderData(show: false),
//                         barGroups: List.generate(7, (index) {
//                           double totalY = [
//                             8500,
//                             10000,
//                             12000,
//                             18000,
//                             14000,
//                             11000,
//                             9000,
//                           ][index].toDouble();
//
//                           double blueY = totalY * 0.6;
//                           double redY = totalY * 0.4;
//
//                           return BarChartGroupData(
//                             x: index,
//                             barRods: [
//                               BarChartRodData(
//                                 toY: totalY,
//                                 width: 30.w,
//                                 borderRadius: BorderRadius.circular(12.r),
//                                 rodStackItems: [
//                                   BarChartRodStackItem(0, blueY, AppColor.cCEE9FF), // 🔵 Blue bottom
//                                   BarChartRodStackItem(blueY, totalY, Colors.red), // 🔴 Red top
//                                 ],
//                               ),
//                             ],
//                           );
//                         }),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
