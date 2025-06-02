// // ignore_for_file: use_build_context_synchronously
// import 'package:flutter/material.dart';
// import 'package:khusi/constants/app_constants.dart';
// import 'package:khusi/onbording_screen.dart';
// import 'package:khusi/helpers/di.dart';
// import 'package:khusi/helpers/helper_methods.dart';
// import 'package:khusi/networks/dio/dio.dart';
//
// import 'welcome_screen.dart';
//
// final class Loading extends StatefulWidget {
//   const Loading({super.key});
//
//   @override
//   State<Loading> createState() => _LoadingState();
// }
//
// class _LoadingState extends State<Loading> {
//   bool _isLoading = true;
//
//   get getProfileRXOBJ => null;
//
//   get getCurrencyRXOBJ => null;
//
//   @override
//   void initState() {
//     loadInitialData();
//     super.initState();
//   }
//   loadInitialData() async {
//     if (appData.read(kKeyIsLoggedIn)) {
//       String token = appData.read(kKeyAccessToken);
//       DioSingleton.instance.update(token);
//       await getProfileRXOBJ.getProfile();
//     }
//     await getCurrencyRXOBJ.getCurrency();
//     await setInitValue();
//     // await initializeNotificationss();
//     //  LocalNotificationService.initialize();
//     // LocalNotificationService.getToken();
//     // DateTime time = DateTime.now().add(const Duration(minutes: 2));
//     // await schedulePrayerNotifications(time);
//
//     // await schedulePrayerNotifications();
//     setState(() {
//       _isLoading = false;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     if (_isLoading) {
//       return const WelcomeScreen();
//     } else {
//       return const  OnbordingScreen();
//       // return appData.read(kKeyIsLoggedIn) || appData.read(kKeyIsExploring) ? const WelcomeScreen() : const WelcomeScreen();
//       // return  appData.read(kKeyIsFirstTime)? const LanguageChoseScreen() : appData.read(kKeyIsLoggedIn)? const NavigationScreen() : const LoginScreen();
//     }
//   }
// }
