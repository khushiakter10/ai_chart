// import 'package:flutter/material.dart';
// import 'package:khusi/features/app_aducation/presentation/categories_f_screen.dart';
// import 'package:khusi/features/app_aducation/presentation/checkout_screen.dart';
// import 'package:khusi/features/app_aducation/presentation/spain_screen.dart';
// import 'package:khusi/features/app_aducation/presentation/splash_screen.dart';
// import 'package:khusi/features/app_aducation/presentation/vegetables.dart';
// import '../gen/assets.gen.dart';
// import '../gen/colors.gen.dart';
//
// class NavigationBarScreen extends StatefulWidget {
//   const NavigationBarScreen({super.key});
//
//   @override
//   State<NavigationBarScreen> createState() => _NavigationBarScreenState();
// }
//
// class _NavigationBarScreenState extends State<NavigationBarScreen> {
//   int index = 0;  // Corrected variable name
//   final List _pageList = [
//   SplashScreen(),
//     CategoriesScreen(),
//     Vegetables(),
//     SpainScreen(),
//     CheckoutScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pageList[index],
//       backgroundColor: Colors.black,
//
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.transparent,
//         showUnselectedLabels: true,  // Show labels for unselected items
//         type: BottomNavigationBarType.fixed,  // Fixed type for equal spacing
//         selectedItemColor: Colors.blue,  // Selected icon and label color
//         selectedLabelStyle: TextStyle(color: Colors.blue, fontSize: 14),  // Selected label style
//         unselectedItemColor: Color(0xFF192A48),  // Unselected icon color
//         unselectedLabelStyle: TextStyle(color: Color(0xFF192A48), fontSize: 14),  // Unselected label style
//         enableFeedback: false,  // Enable feedback (true for haptic feedback)
//
//
//         elevation: 0,
//         items: [
//           BottomNavigationBarItem(
//
//             icon: Image.asset(Assets.icons.home.path, height: 30, color: index == 0 ?  AppColors.cAFFF00: AppColors.cFFFFFF),
//             label: 'Home',
//             backgroundColor: Colors.black,
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(Assets.icons.picturk.path, height: 30, color: index == 1 ?  AppColors.cAFFF00: Colors.grey),
//             label: 'Chat',
//             backgroundColor: Colors.white,
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(Assets.icons.time2k.path, height: 30, color: index == 2 ? AppColors.cAFFF00: Colors.grey),
//             label: 'add',
//             backgroundColor: Colors.white,
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(Assets.icons.accountNotification.path, height: 30, color: index == 3 ? AppColors.cAFFF00: Colors.grey),
//             label: 'Person',
//             backgroundColor: Colors.white,
//           ),
//         ],
//         currentIndex: index,
//         onTap: (int selectedIndex) {
//           setState(() {
//             index = selectedIndex;  // Update the index when a tab is selected
//           });
//         },
//       ),
//     );
//   }
// }
//
