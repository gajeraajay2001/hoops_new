import 'package:get/get.dart';

import 'package:hoops_new_26_05/app/modules/add_personal_info_screen/bindings/add_personal_info_screen_binding.dart';
import 'package:hoops_new_26_05/app/modules/add_personal_info_screen/views/add_personal_info_screen_view.dart';
import 'package:hoops_new_26_05/app/modules/add_profile_screen/bindings/add_profile_screen_binding.dart';
import 'package:hoops_new_26_05/app/modules/add_profile_screen/views/add_profile_screen_view.dart';
import 'package:hoops_new_26_05/app/modules/allow_location_2_screen/bindings/allow_location_2_screen_binding.dart';
import 'package:hoops_new_26_05/app/modules/allow_location_2_screen/views/allow_location_2_screen_view.dart';
import 'package:hoops_new_26_05/app/modules/allow_location_screen/bindings/allow_location_screen_binding.dart';
import 'package:hoops_new_26_05/app/modules/allow_location_screen/views/allow_location_screen_view.dart';
import 'package:hoops_new_26_05/app/modules/home_screen/bindings/home_screen_binding.dart';
import 'package:hoops_new_26_05/app/modules/home_screen/views/home_screen_view.dart';
import 'package:hoops_new_26_05/app/modules/information_tab_view/bindings/information_tab_view_binding.dart';
import 'package:hoops_new_26_05/app/modules/information_tab_view/views/information_tab_view_view.dart';
import 'package:hoops_new_26_05/app/modules/login_screen/bindings/login_screen_binding.dart';
import 'package:hoops_new_26_05/app/modules/login_screen/views/login_screen_view.dart';
import 'package:hoops_new_26_05/app/modules/notification_screen/bindings/notification_screen_binding.dart';
import 'package:hoops_new_26_05/app/modules/notification_screen/views/notification_screen_view.dart';
import 'package:hoops_new_26_05/app/modules/otp_screen/bindings/otp_screen_binding.dart';
import 'package:hoops_new_26_05/app/modules/otp_screen/views/otp_screen_view.dart';
import 'package:hoops_new_26_05/app/modules/privacy_tab_view/bindings/privacy_tab_view_binding.dart';
import 'package:hoops_new_26_05/app/modules/privacy_tab_view/views/privacy_tab_view_view.dart';
import 'package:hoops_new_26_05/app/modules/setting_screen/bindings/setting_screen_binding.dart';
import 'package:hoops_new_26_05/app/modules/setting_screen/views/setting_screen_view.dart';
import 'package:hoops_new_26_05/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:hoops_new_26_05/app/modules/splash_screen/views/splash_screen_view.dart';
import 'package:hoops_new_26_05/app/modules/tabs.profile_section/bindings/tabs_profile_section_binding.dart';
import 'package:hoops_new_26_05/app/modules/tabs.profile_section/views/tabs_profile_section_view.dart';
import 'package:hoops_new_26_05/app/modules/tabs.record_game/bindings/tabs_record_game_binding.dart';
import 'package:hoops_new_26_05/app/modules/tabs.record_game/views/tabs_record_game_view.dart';
import 'package:hoops_new_26_05/app/modules/tabs/home_tab/bindings/home_tab_binding.dart';
import 'package:hoops_new_26_05/app/modules/tabs/home_tab/views/home_tab_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PROFILE_SCREEN,
      page: () => AddProfileScreenView(),
      binding: AddProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PERSONAL_INFO_SCREEN,
      page: () => AddPersonalInfoScreenView(),
      binding: AddPersonalInfoScreenBinding(),
    ),
    GetPage(
      name: _Paths.ALLOW_LOCATION_SCREEN,
      page: () => AllowLocationScreenView(),
      binding: AllowLocationScreenBinding(),
    ),
    GetPage(
      name: _Paths.ALLOW_LOCATION_2_SCREEN,
      page: () => AllowLocation2ScreenView(),
      binding: AllowLocation2ScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_TAB,
      page: () => HomeTabView(),
      binding: HomeTabBinding(),
    ),
    GetPage(
      name: _Paths.TABS_RECORD_GAME,
      page: () => TabsRecordGameView(),
      binding: TabsRecordGameBinding(),
    ),
    GetPage(
      name: _Paths.TABS_PROFILE_SECTION,
      page: () => TabsProfileSectionView(),
      binding: TabsProfileSectionBinding(),
    ),
    GetPage(
      name: _Paths.SETTING_SCREEN,
      page: () => SettingScreenView(),
      binding: SettingScreenBinding(),
    ),
    GetPage(
      name: _Paths.INFORMATION_TAB_VIEW,
      page: () => InformationTabViewView(),
      binding: InformationTabViewBinding(),
    ),
    GetPage(
      name: _Paths.PRIVACY_TAB_VIEW,
      page: () => PrivacyTabViewView(),
      binding: PrivacyTabViewBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION_SCREEN,
      page: () => NotificationScreenView(),
      binding: NotificationScreenBinding(),
    ),
    GetPage(
      name: _Paths.OTP_SCREEN,
      page: () => OtpScreenView(),
      binding: OtpScreenBinding(),
    ),
  ];
}
