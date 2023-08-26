import 'package:easycut_business/core/constant/routes.dart';
import 'package:easycut_business/core/middleware/my_middleware.dart';
import 'package:easycut_business/view/screen/auth/forget_password/forgot_password.dart';
import 'package:easycut_business/view/screen/auth/forget_password/reset_password.dart';
import 'package:easycut_business/view/screen/auth/login.dart';
import 'package:easycut_business/view/screen/auth/success.dart';
import 'package:easycut_business/view/screen/home.dart';
import 'package:easycut_business/view/screen/language.dart';
import 'package:easycut_business/view/screen/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  // =================== On Boarding ======================
  GetPage(
    name: "/",
    page: () => const Language(),
    middlewares: [
      MyMiddleware(),
    ],
  ),
  GetPage(
    name: AppRoute.onBoarding,
    page: () => const OnBoarding(),
  ),
  // ===================     Auth    ======================
  GetPage(
    name: AppRoute.login,
    page: () => const Login(),
  ),
  GetPage(
    name: AppRoute.forgetPassword,
    page: () => const ForgotPassword(),
  ),
  GetPage(
    name: AppRoute.resetPassword,
    page: () => const ResetPassword(),
  ),
  GetPage(
    name: AppRoute.success,
    page: () => const Success(),
  ),
  // ===================     Home =========================
  GetPage(
    name: AppRoute.home,
    page: () => const Home(),
  ),
];
