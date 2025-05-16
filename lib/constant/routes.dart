import 'package:GamStore/constant/routes_name.dart';
import 'package:get/get.dart';
import '../main.dart';
import '../view/auth/forgotepass_screen.dart';
import '../view/auth/login_screen.dart';
import '../view/auth/newpass_screen.dart';
import '../view/auth/otp_screen.dart';
import '../view/auth/signup_screen.dart';
import '../view/dashboard/drawer/setting_notification_screen.dart';
import '../view/dashboard/drawer/setting_screen.dart';
import '../view/dashboard/dresses_screen.dart';
import '../view/dashboard/home_screen.dart';
import '../view/dashboard/my_order/delivered_order_detail_screen.dart';
import '../view/dashboard/my_order/pending_order_detail_screen.dart';
import '../view/dashboard/my_order/product_rating_screen.dart';
import '../view/dashboard/my_order/track_order_screen.dart';
import '../view/dashboard/notificaton_screen.dart';
import '../view/dashboard/product_detail.dart';
import '../view/dashboard/profile/address_screen.dart';
import '../view/dashboard/profile/payment_method_screen.dart';
import '../view/dashboard/profile/ratethis_app_screen.dart';
import '../view/dashboard/profile/voucher_screen.dart';
import '../view/dashboard/profile/wishlist/my_wishlist_screen.dart';
import '../view/onboarding/onboarding_screen.dart';
import '../view/splash/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(name: RouteName.splashScreen, page: () => const SplashScreen()),
    GetPage(name: RouteName.onboardingScreen, page: () => OnboardingScreen()),
    GetPage(name: RouteName.signupScreen, page: () => const SignUpScreen()),
    GetPage(name: RouteName.loginScreen, page: () => const LoginScreen()),
    GetPage(name: RouteName.forgotPassScreen, page: () => const ForgatepassScreen()),
    GetPage(name: RouteName.otpScreen, page: () => const VerificationCodeScreen()),
    GetPage(name: RouteName.newPassScreen, page: () => const NewPassScreen()),
    GetPage(name: RouteName.homeScreen, page: () => const HomeScreen()),
    GetPage(name: RouteName.dressesScreen, page: () => const DressesScreen()),
    GetPage(name: RouteName.productDetailScreen, page: () => const ProductDetailScreen()),
    GetPage(name: RouteName.notificationScreen, page: () => const NotificationScreen()),
    GetPage(name: RouteName.addressScreen, page: () => const AddressScreen()),
    GetPage(name: RouteName.paymentMethodScreen, page: () => PaymentMethodScreen()),
    GetPage(name: RouteName.voucherScreen, page: () => const VoucherScreen()),
    GetPage(name: RouteName.myWishlistScreen, page: () => const MyWishlistScreen()),
    GetPage(name: RouteName.rateThisAppScreen, page: () => const RateThisAppScreen()),
    GetPage(name: RouteName.settingScreen, page: () => const SettingScreen()),
    GetPage(name: RouteName.settingNotificationScreen, page: () => const SettingNotificationScreen()),
    GetPage(name: RouteName.orderDetailScreen, page: () => OrderDetailScreen()),
    GetPage(name: RouteName.productRatingScreen, page: () => const ProductRatingScreen()),
    GetPage(name: RouteName.pendingOrderDetailScreen, page: () => PendingOrderDetailScreen()),
    GetPage(name: RouteName.trackOrderScreen, page: () => TrackOrderScreen()),


    // GetPage(name: RouteName.login, page: () => LoginScreen(),),
  ];

}
