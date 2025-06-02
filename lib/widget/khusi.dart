import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class KalorierCardUI extends StatelessWidget {
  const KalorierCardUI({super.key});

  @override
  Widget build(BuildContext context) {

    double remainingKcal = 480;
    double currentKcal = 520;
    double totalKcal = 1000; //

    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// 🔥 Header: Icon + "Kalorier"
            Row(
              children: [
                Icon(Icons.local_fire_department, size: 20.sp),
                SizedBox(width: 6.w),
                Text(
                  'Kalorier',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            SizedBox(height: 22.h),

            /// 🎯 Radial Gauge (Speedometer)
            Center(

              child: SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                    startAngle: 180,
                    endAngle: 0,
                    showTicks: false,
                    showLabels: false,
                    minimum: 0,
                    maximum: totalKcal,
                    radiusFactor: 1.0,
                    canScaleToFit: true,
                    axisLineStyle: AxisLineStyle(
                      thickness: 0.2,
                      thicknessUnit: GaugeSizeUnit.factor,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    pointers: <GaugePointer>[

                      RangePointer(
                        value: currentKcal,
                        width: 0.2,
                        sizeUnit: GaugeSizeUnit.factor,
                        color: Colors.lightBlue.shade100,
                        cornerStyle: CornerStyle.bothCurve,
                      ),

                      NeedlePointer(
                        value: currentKcal,
                        enableAnimation: true,
                        needleLength: 0.7,
                        needleStartWidth: 0,
                        needleEndWidth: 8,
                        knobStyle: KnobStyle(
                          knobRadius: 0.07,
                          sizeUnit: GaugeSizeUnit.factor,
                          color: Colors.lightBlue.shade100,
                        ),
                        needleColor: Colors.lightBlue.shade100,
                        tailStyle: TailStyle(
                          width: 0,
                          length: 0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


            SizedBox(height: 22.h),

            /// 🔢 Calories Count
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${currentKcal.toInt()}',
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 4.w),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: Text(
                    'kcal',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 8.h),

            /// 💬 Remaining Calories
            Row(
              children: [
                Text(
                  'Återstående: ',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  '${remainingKcal.toInt()} kcal',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
