import 'package:dish_home/app/home_navigation/home_navigatiion.dart';
import 'package:dish_home/features/presentation/pages/about_us_page/about_us_page.dart';
import 'package:dish_home/features/presentation/pages/account_dignostic/account_dignostic.dart';
import 'package:dish_home/features/presentation/pages/create_account/create_account.dart';
import 'package:dish_home/features/presentation/pages/data_usage_page/data_usages_page.dart';
import 'package:dish_home/features/presentation/pages/dish_home_go/dish_home_go.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/change_password_page.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/forgot_password.dart';
import 'package:dish_home/features/presentation/pages/forgot_password/opt_verification_page.dart';
import 'package:dish_home/features/presentation/pages/dash_board_page/dash_board_page.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_page.dart';
import 'package:dish_home/features/presentation/pages/login_page/login_with_ID.dart';
import 'package:dish_home/features/presentation/pages/notification_page/notification_page.dart';
import 'package:dish_home/features/presentation/pages/offer_promo_page/offer_promo_page.dart';
import 'package:dish_home/features/presentation/pages/order_page/order_page.dart';
import 'package:dish_home/features/presentation/pages/order_page/payment_page.dart';
import 'package:dish_home/features/presentation/pages/ppv_pages/dish_home_dth.dart';
import 'package:dish_home/features/presentation/pages/ppv_pages/life_style_hd.dart';
import 'package:dish_home/features/presentation/pages/ppv_pages/ppv_page.dart';
import 'package:dish_home/features/presentation/pages/profile/edit_profile.dart';
import 'package:dish_home/features/presentation/pages/profile/user_profile.dart';
import 'package:dish_home/features/presentation/pages/recharge/recharge_page.dart';
import 'package:dish_home/features/presentation/pages/refer_page/refer_page.dart';
import 'package:dish_home/features/presentation/pages/scanner_page/scanner_page.dart';
import 'package:dish_home/features/presentation/pages/setting_page/setting_menu_page.dart';
import 'package:dish_home/features/presentation/pages/speed_test/speed_test.dart';
import 'package:dish_home/features/presentation/pages/splashScreen/splash_screen.dart';
import 'package:dish_home/features/presentation/pages/support_page/support_page.dart';
import 'package:dish_home/features/presentation/pages/tv_page/tv_page.dart';
import 'package:dish_home/features/translation/translation.dart';
import 'package:get/get.dart';
import '../../features/presentation/pages/chat_bot_page/chat_bot.dart';
import '../../features/presentation/pages/faqs_page/faqs_page.dart';
import '../../features/presentation/pages/order_page/select_bank_payment.dart';
import '../../features/presentation/pages/personal_document/personal_document.dart';
import '../../features/presentation/pages/store_page/dishhome_store.dart';

class RouteHelper {
  RouteHelper._();

  ///Route constant
  static const String inittial = "/";
  static const String homeNav = "/home-nav";
  static const String login = "/login";
  static const String loginWithID = "/loginWithID";
  static const String forgotPassword = "/password";
  static const String changePassword = "/change-password";
  static const String createAccount = "/create-account";
  static const String homePage = "/home-page";
  static const String otpVerification = "/otp-verification";
  static const String userProfile = "/user-profile";
  static const String editProfile = "/edit-profile";
  static const String dishHomeDTH = "/dishHome-DTH";
  static const String lifeStyleHD = "/life-style-hd";
  static const String chatBot = "/chat-bot";

  static const String orderPage = '/order-page';
  static const String paymentPage = "/payment-page";
  static const String selectPaymentBank = "/select-bank";
  static const String notifications = '/notifications';
  static const String scannerpage = "/scanner";
  static const String menuSetting = "/menu";
  static const String language = "/language";
  static const String recharge = "/recharge";
  static const String refer = "/refer";
  static const String aboutUs = "/about-us";
  static const String store = "/store";
  static const String dishHomeGo = "/dish-home-go";
  static const String ppvPage = "/ppv-page";
  static const String tvPage = "/tv-page";
  static const String ppv = "/ppv";
  static const String dataUsages = "/data-usages";
  static const String supportPage = "/support-page";

  static const String personalDocument = "/document";
  static const String speedTest = "/speed-test";
  static const String faqs = "/faqs";
  static const String accountDignostic = "/account-dignostic";
  static const String interNetDataUsage = "/internet-data-usages";
  static const String offerPromorPage = "/offer-promo";

  ///Route constant refrences getter method
  static String getInitial() => inittial;
  static String getHomeNav() => homeNav;
  static String getLogin() => login;
  static String getLoginWithID() => loginWithID;
  static String getForgotPassword() => forgotPassword;
  static String getChangePassword() => changePassword;
  static String getCreateAccount() => createAccount;
  static String getHomePage() => homePage;
  static String getOtpVerificationPage() => otpVerification;
  static String getUserProfile() => userProfile;
  static String getEditProfile() => editProfile;
  static String getDishHomeDTH() => dishHomeDTH;
  static String getLifeStyleHD() => lifeStyleHD;

  static String getOrderPage() => orderPage;
  static String getPaymentPage() => paymentPage;
  static String getSelectPaymentBank() => selectPaymentBank;
  static String getNotificationPage() => notifications;
  static String getScannerPage() => scannerpage;
  static String getMenuPage() => menuSetting;
  static String getLanguage() => language;
  static String getRechargePage() => recharge;
  static String getRefer() => refer;
  static String getAboutUs() => aboutUs;
  static String getStore() => store;
  static String getChatBot() => chatBot;
  static String getDishHomeGo() => dishHomeGo;
  static String getPpvPage() => ppvPage;
  static String getTvPage() => tvPage;
  static String getPPv() => ppv;
  static String getDataUsages() => dataUsages;
  static String getSupportPage() => supportPage;

  static String getPersonalDocuments() => personalDocument;
  static String getSpeedTest() => speedTest;
  static String getFaqs() => faqs;
  static String getAccountDignostic() => accountDignostic;
  static String getInternateDataUsage() => interNetDataUsage;
  static String getOfferPromoo()=>offerPromorPage;

  ///All pages
  static List<GetPage> routes = [
    GetPage(
      name: homeNav,
      page: () => const HomeNavigation(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: inittial,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: loginWithID,
      page: () => const LoginWithID(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: forgotPassword,
      page: () => const ForgotPassword(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: createAccount,
      page: () => const CreateAccountPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: homePage,
      page: () => const HomePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: otpVerification,
      page: () => const OtpVerification(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: changePassword,
      page: () => const ChangePassword(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: userProfile,
      page: () => const UserProfile(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: editProfile,
      page: () => const EditProfile(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: orderPage,
      page: () => const OrderPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: paymentPage,
      page: () => const PaymentPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: selectPaymentBank,
      page: () => const SelectPaymentBank(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: dishHomeDTH,
      page: () => const DishHomeDTH(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: lifeStyleHD,
      page: () => const LifeStyleHD(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: notifications,
      page: () => const NotifiacationPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: scannerpage,
      page: () => const ScannerPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: menuSetting,
      page: () => const SettingPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: language,
      page: () => const SelectLanguage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: recharge,
      page: () => const RechargePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: refer,
      page: () => const ReferPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: aboutUs,
      page: () => const AboutUsPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: store,
      page: () => const DishHomeStorePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: chatBot,
      page: () => const ChatBotPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: dishHomeGo,
      page: () => const DishHomeGo(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ppvPage,
      page: () => const PpvPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: tvPage,
      page: () => const TvPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ppv,
      page: () => const PpvPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: dataUsages,
      page: () => const DataUsagePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: supportPage,
      page: () => const SupportPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: personalDocument,
      page: () => const PesonalDocumentsManagement(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: speedTest,
      page: () => const SpeedTest(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: faqs,
      page: () => const FeedBackPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: accountDignostic,
      page: () => const AccountDignostic(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: interNetDataUsage,
      page: () => const DataUsagePage(),
      transition: Transition.fadeIn,
    ),
     GetPage(
      name: offerPromorPage,
      page: () => const OfferPromoPagr(),
      transition: Transition.fadeIn,
    ),
  ];


}
