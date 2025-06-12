// import 'package:flutter/material.dart';
//
// class ProjectErPiChat extends StatefulWidget {
//   const ProjectErPiChat({super.key});
//
//   @override
//   State<ProjectErPiChat> createState() => _ProjectErPiChatState();
// }
//
// class _ProjectErPiChatState extends State<ProjectErPiChat> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
//             child: Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: AppColor.cE0E1E3),
//                 borderRadius: BorderRadius.circular(20.r),
//                 color: AppColor.cFFFCFB,
//                 boxShadow:  [
//                   BoxShadow(
//                     color: AppColor.cFFFFFF,
//                     blurRadius: 8.r,
//                     spreadRadius: 2.r,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//               padding:  EdgeInsets.all(16.r),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('Träningsaktivitet',style: TextFontStyle.headline16c212738Figtreew500,),
//                   UIHelper.verticalSpace(16.h),
//                   SizedBox(
//                     height: 330.h,
//                     width: double.infinity,
//                     child: BarChart(
//                       BarChartData(
//                         alignment: BarChartAlignment.spaceAround,
//                         maxY: 20000,
//                         barTouchData: BarTouchData(enabled: false),
//                         titlesData: FlTitlesData(
//                           show: true,
//                           bottomTitles: AxisTitles(
//                             sideTitles: SideTitles(
//                               showTitles: true,
//                               getTitlesWidget: (value, meta) {
//                                 const days = ['Sön', 'Mån', 'Tis', 'Ons', 'Tor', 'Fre', 'Lör'];
//                                 if (value.toInt() < 0 || value.toInt() >= days.length) return const SizedBox();
//                                 return Padding(
//                                   padding: const EdgeInsets.only(top: 8.0),
//                                   child: Text(
//                                     days[value.toInt()],
//                                     style:  TextStyle(fontSize: 12.sp),
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                           leftTitles: AxisTitles(
//                             sideTitles: SideTitles(
//                               showTitles: true,
//                               reservedSize: 40,
//                               interval: 5000,
//                               getTitlesWidget: (value, meta) {
//                                 return Text(
//                                   '${value.toInt()}',
//                                   style: const TextStyle(fontSize: 12),
//                                 );
//                               },
//                             ),
//                           ),
//                           topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
//                           rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
//                         ),
//
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
//                         barGroups: [
//                           BarChartGroupData(
//                             x: 0,
//                             barRods: [
//                               BarChartRodData(
//                                 toY: 20000,
//                                 width: 30,
//                                 borderRadius: BorderRadius.circular(20.r),
//                                 rodStackItems: [
//                                   BarChartRodStackItem(0, 8500, AppColor.cCEE9FF),
//                                   BarChartRodStackItem(8500, 20000, AppColor.cF4F5F5),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           BarChartGroupData(
//                             x: 1,
//                             barRods: [
//                               BarChartRodData(
//                                 toY: 20000,
//                                 width: 30,
//                                 borderRadius: BorderRadius.circular(20.r),
//                                 rodStackItems: [
//                                   BarChartRodStackItem(0, 8500, AppColor.cCEE9FF),
//                                   BarChartRodStackItem(8500, 20000, AppColor.cF4F5F5),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           BarChartGroupData(
//                             x: 2,
//                             barRods: [
//                               BarChartRodData(
//                                 toY: 20000,
//                                 width: 30,
//                                 borderRadius: BorderRadius.circular(20.r),
//                                 rodStackItems: [
//                                   BarChartRodStackItem(0, 8500, AppColor.cCEE9FF),
//                                   BarChartRodStackItem(8500, 20000, AppColor.cF4F5F5),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           BarChartGroupData(
//                             x: 3,
//                             barRods: [
//                               BarChartRodData(
//                                 toY: 20000,
//                                 width: 30,
//                                 borderRadius: BorderRadius.circular(20.r),
//                                 borderSide: BorderSide(color: AppColor.cE3D46B,width: 1.w),
//                                 rodStackItems: [
//                                   BarChartRodStackItem(0, 12500, AppColor.cFFF080),
//                                   BarChartRodStackItem(12500, 25000, AppColor.cF4F5F5),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           BarChartGroupData(
//                             x: 4,
//                             barRods: [
//                               BarChartRodData(
//                                 toY: 20000,
//                                 width: 30,
//                                 borderRadius: BorderRadius.circular(20.r),
//                                 rodStackItems: [
//                                   BarChartRodStackItem(0, 8500, AppColor.cCEE9FF),
//                                   BarChartRodStackItem(8500, 20000, AppColor.cF4F5F5),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           BarChartGroupData(
//                             x: 5,
//                             barRods: [
//                               BarChartRodData(
//                                 toY: 20000,
//                                 width: 30,
//                                 borderRadius: BorderRadius.circular(20.r),
//                                 rodStackItems: [
//                                   BarChartRodStackItem(0, 8500, AppColor.cCEE9FF),
//                                   BarChartRodStackItem(8500, 20000, AppColor.cF4F5F5),
//                                 ],
//                               ),
//                             ],
//                           ),
//                           BarChartGroupData(
//                             x: 6,
//                             barRods: [
//                               BarChartRodData(
//                                 toY: 20000,
//                                 width: 30,
//                                 borderRadius: BorderRadius.circular(20.r),
//                                 rodStackItems: [
//                                   BarChartRodStackItem(0, 8500, AppColor.cCEE9FF),
//                                   BarChartRodStackItem(8500, 20000, AppColor.cF4F5F5),
//
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   )
//
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
