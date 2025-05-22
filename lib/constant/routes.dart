import 'package:GamStore/constant/routes_name.dart';
import 'package:get/get.dart';
import '../view/auth/auth_binding/forgotpass_binding.dart';
import '../view/auth/auth_binding/login_binding.dart';
import '../view/auth/auth_binding/newpass_binding.dart';
import '../view/auth/auth_binding/otp_binding.dart';
import '../view/auth/auth_binding/signup_binding.dart';
import '../view/auth/forgotepass_screen.dart';
import '../view/auth/login_screen.dart';
import '../view/auth/newpass_screen.dart';
import '../view/auth/otp_screen.dart';
import '../view/auth/signup_screen.dart';
import '../view/dashboard/catagory_pages/catagory_binding/womencategory_binding.dart';
import '../view/dashboard/dashboard_binding/bottomnavbar_binding.dart';
import '../view/dashboard/dashboard_binding/category_selector_binding.dart';
import '../view/dashboard/dashboard_binding/dresses_binding.dart';
import '../view/dashboard/dashboard_binding/notification_binding.dart';
import '../view/dashboard/dashboard_binding/product_detail_binding.dart';
import '../view/dashboard/drawer/drawer_binding/setting_binding.dart';
import '../view/dashboard/drawer/drawer_binding/setting_notification_binding.dart';
import '../view/dashboard/drawer/setting_notification_screen.dart';
import '../view/dashboard/drawer/setting_screen.dart';
import '../view/dashboard/dresses_screen.dart';
import '../view/dashboard/home_screen.dart';
import '../view/dashboard/my_order/delivered_order_detail_screen.dart';
import '../view/dashboard/my_order/my_order_binding/cancelled_order_binding.dart';
import '../view/dashboard/my_order/my_order_binding/delevered_order_binding.dart';
import '../view/dashboard/my_order/my_order_binding/my_order_binding.dart';
import '../view/dashboard/my_order/my_order_binding/pending_order_binding.dart';
import '../view/dashboard/my_order/my_order_binding/product_rating_binding.dart';
import '../view/dashboard/my_order/my_order_binding/track_order_binding.dart';
import '../view/dashboard/my_order/pending_order_detail_screen.dart';
import '../view/dashboard/my_order/product_rating_screen.dart';
import '../view/dashboard/my_order/track_order_screen.dart';
import '../view/dashboard/notificaton_screen.dart';
import '../view/dashboard/product_detail_screen.dart';
import '../view/dashboard/profile/address_screen.dart';
import '../view/dashboard/profile/payment_method_screen.dart';
import '../view/dashboard/profile/profile_binding/address_binding.dart';
import '../view/dashboard/profile/profile_binding/payment_mehode_binding.dart';
import '../view/dashboard/profile/profile_binding/profile_binding.dart';
import '../view/dashboard/profile/profile_binding/ratethis_app_binding.dart';
import '../view/dashboard/profile/ratethis_app_screen.dart';
import '../view/dashboard/profile/voucher_screen.dart';
import '../view/dashboard/profile/wishlist/my_wishlist_screen.dart';
import '../view/dashboard/profile/wishlist/wishlist_binding/my_wishlist_binding.dart';
import '../view/onboarding/onboarding_binding/onboarding.dart';
import '../view/onboarding/onboarding_screen.dart';
import '../view/splash/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
        name: RouteName.splashScreen,
        page: () => const SplashScreen()
    ),
    GetPage(
        name: RouteName.onboardingScreen,
        page: () => const OnboardingScreen(),
        binding: OnBoardingBinding()
    ),
    GetPage(
        name: RouteName.signupScreen,
        page: () => const SignUpScreen(),
        binding: SignUpBinding(),
    ),
    GetPage(
        name: RouteName.loginScreen,
        page: () => const LoginScreen(),
        binding: LoginBiding(),
    ),
    GetPage(
      name: RouteName.forgotPassScreen,
      page: () =>  const ForgotPassScreen(),
      binding: ForgotPass(),
    ),
    GetPage(
      name: RouteName.otpScreen,
      page: () => const VerificationCodeScreen(),
      binding: OtpBinding()
    ),
    GetPage(
        name: RouteName.newPassScreen,
        page: () => const NewPassScreen(),
        binding: NewPass()
    ),
    GetPage(
        name: RouteName.homeScreen,
        page: () => const HomeScreen(),
        bindings: <Bindings>[
          WomenCategoryBinding(),
          CancelledOrderBinding(),
          DeliveredOrderBinging(),
          MyOrderBinding(),
          PendingOrderBinding(),
          ProductRatingBinding(),
          TrackOrderBinding(),
          BottomNavbarBinding(),
          CategorySelectorBinding(),
          ProfileBinding(),
          DressesBinding(),
        ]
    ),
    GetPage(
        name: RouteName.dressesScreen,
        page: () => const DressesScreen(),
        binding: DressesBinding()
    ),
    GetPage(
      name: RouteName.productDetailScreen,
      page: () => const ProductDetailScreen(),
      binding: ProductDetailBinding()
    ),
    GetPage(
      name: RouteName.notificationScreen,
      page: () => const NotificationScreen(),
      binding: NotificationBinding()
    ),
    GetPage(
        name: RouteName.addressScreen,
        page: () => const AddressScreen(),
        binding: AddressBinding()
    ),
    GetPage(
      name: RouteName.paymentMethodScreen,
      page: () => const PaymentMethodScreen(),
      binding: PaymentMethodBinding()
    ),
    GetPage(
        name: RouteName.voucherScreen,
        page: () => const VoucherScreen()
    ),
    GetPage(
      name: RouteName.myWishlistScreen,
      page: () => const MyWishlistScreen(),
      binding: MyWishListBinding()
    ),
    GetPage(
      name: RouteName.rateThisAppScreen,
      page: () => const RateThisAppScreen(),
      binding: RateThisAppBinding()
    ),
    GetPage(
        name: RouteName.settingScreen,
        page: () => const SettingScreen(),
        binding: SettingBinding(),
    ),
    GetPage(
      name: RouteName.settingNotificationScreen,
      page: () => const SettingNotificationScreen(),
      binding: SettingNotificationBinding(),
    ),
    GetPage(
        name: RouteName.orderDetailScreen,
        page: () => OrderDetailScreen(),
        binding: DeliveredOrderBinging()
    ),
    GetPage(
      name: RouteName.productRatingScreen,
      page: () => const ProductRatingScreen(),
      binding: ProductRatingBinding()
    ),
    GetPage(
      name: RouteName.pendingOrderDetailScreen,
      page: () => PendingOrderDetailScreen(),
    ),
    GetPage(
        name: RouteName.trackOrderScreen,
        page: () => TrackOrderScreen()
    ),
    // GetPage(name: RouteName.login, page: () => LoginScreen(),),
  ];
}
