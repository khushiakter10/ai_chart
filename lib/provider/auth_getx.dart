// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:khusi/features/auth/presentation/widgets/sign_in_service.dart';
//
// class SignInController extends GetxController {
//   final formKey = GlobalKey<FormState>();
//   RxBool isLoading = true.obs;
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passController = TextEditingController();
//
//   signInFun() async {
//     isLoading.value = true;
//     SignInService.signinService(
//         email: emailController.text, password: passController.text);
//     isLoading.value = false;
//   }
//
//   @override
//   void onInit() {
//     emailController.text ="ss@gmail.com";
//     passController.text ="12345678";
//     // signInFun();
//     super.onInit();
//   }
// //
// }