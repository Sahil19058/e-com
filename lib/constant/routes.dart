import 'package:get/get.dart';
import 'package:untitled7/constant/routes_name.dart';
import 'package:untitled7/view/splash/splash_screen.dart';
import '../view/auth/forgotepass_screen.dart';
import '../view/auth/login_screen.dart';
import '../view/auth/newpass_screen.dart';
import '../view/auth/otp_screen.dart';
import '../view/auth/signup_screen.dart';
import '../view/dashboard/dresses_screen.dart';
import '../view/dashboard/home_screen.dart';
import '../view/dashboard/notificaton_screen.dart';
import '../view/dashboard/product_detail.dart';
import '../view/dashboard/profile/address_screen.dart';
import '../view/dashboard/profile/my_wishlist_screen.dart';
import '../view/dashboard/profile/payment_method_screen.dart';
import '../view/dashboard/profile/ratethis_app_screen.dart';
import '../view/dashboard/profile/voucher_screen.dart';
import '../view/onboarding/onboarding_screen.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(name: RouteName.splashScreen, page: () => SplashScreen()),
    GetPage(name: RouteName.onboardingScreen, page: () => OnboardingScreen()),
    GetPage(name: RouteName.signupScreen, page: () => SignUpScreen()),
    GetPage(name: RouteName.loginScreen, page: () => LoginScreen()),
    GetPage(name: RouteName.forgotPassScreen, page: () => ForgatepassScreen()),
    GetPage(name: RouteName.otpScreen, page: () => VerificationCodeScreen()),
    GetPage(name: RouteName.newPassScreen, page: () => NewPassScreen()),
    GetPage(name: RouteName.homeScreen, page: () => HomeScreen()),
    GetPage(name: RouteName.dressesScreen, page: () => DressesScreen()),
    GetPage(name: RouteName.productDetailScreen, page: () => ProductDetailScreen()),
    GetPage(name: RouteName.notificationScreen, page: () => NotificationScreen()),
    GetPage(name: RouteName.addressScreen, page: () => AddressScreen()),
    GetPage(name: RouteName.paymentMethodScreen, page: () => PaymentMethodScreen()),
    GetPage(name: RouteName.voucherScreen, page: () => VoucherScreen()),
    GetPage(name: RouteName.myWishlistScreen, page: () => MyWishlistScreen()),
    GetPage(name: RouteName.rateThisAppScreen, page: () => RateThisAppScreen()),


    // GetPage(name: RouteName.login, page: () => LoginScreen(),),
  ];

}
