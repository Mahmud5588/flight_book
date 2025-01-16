import 'package:exam/cores/routes/route_names.dart';
import 'package:exam/features/account/screens/settings/confrimyourpin.dart';
import 'package:exam/features/account/screens/settings/delete_account.dart';
import 'package:exam/features/account/screens/settings/email_number.dart';
import 'package:exam/features/account/screens/settings/language.dart';
import 'package:exam/features/account/screens/settings/notifications.dart';
import 'package:exam/features/account/screens/settings/security_settings.dart';
import 'package:exam/features/account/screens/settings/setpinpage.dart';
import 'package:exam/features/account/screens/settings/settings.dart';
import 'package:exam/features/authentications/screens/onBoarding.dart';
import 'package:exam/features/authentications/screens/sign_in.dart';
import 'package:exam/features/authentications/screens/sign_up.dart';
import 'package:exam/features/homepage/screens/bottomnavbar.dart';
import 'package:exam/features/homepage/screens/homepage.dart';
import 'package:exam/features/homepage/trancaction_details_page.dart';
import 'package:exam/features/homepage/widget/contact/flight_searche_page.dart';
import 'package:exam/features/into/splash_page.dart';
import 'package:exam/payment_details.dart';
import 'package:flutter/material.dart';

class AppRoute {
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.onBoarding:
        return MaterialPageRoute(builder: (_) => const InfoPage());
      case RouteNames.signIn:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case RouteNames.signUp:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case RouteNames.homePage:
        return MaterialPageRoute(builder: (_) => const Homepage());
      case RouteNames.bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavbar());
      case RouteNames.settings:
        return MaterialPageRoute(builder: (_) => const Settings());
      case RouteNames.language:
        return MaterialPageRoute(builder: (_) => const Language());
      case RouteNames.notifications:
        return MaterialPageRoute(builder: (_) => const Notifications());
      case RouteNames.emailNumber:
        return MaterialPageRoute(builder: (_) => const EmailNumber());
      case RouteNames.securitySetting:
        return MaterialPageRoute(builder: (_) => const SecuritySettings());
      case RouteNames.confirmYourPin:
        return MaterialPageRoute(builder: (_) => const ConfirmYourPin());
      case RouteNames.setPinPage:
        return MaterialPageRoute(builder: (_) => SetPinPage());
      case RouteNames.deleteAccount:
        return MaterialPageRoute(builder: (_) => const DeleteAccount());
      case RouteNames.paymentDetails:
        return MaterialPageRoute(builder: (_) => const PaymentDetails());
      case RouteNames.splashPage:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RouteNames.searchFlightPage:
        return MaterialPageRoute(builder: (_) => const SearchFlightsPage());
      case RouteNames.transactionDetail:
        return MaterialPageRoute(builder: (_) => const TransactionDetails());
      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}
