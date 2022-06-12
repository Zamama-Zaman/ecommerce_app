import 'package:flutter/widgets.dart';
import 'package:nidhub_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:nidhub_app/screens/form/form_screen.dart';
import 'package:nidhub_app/screens/main_screen/main_screen.dart';
import 'package:nidhub_app/screens/place_offer/place_offer_screen.dart';
import 'package:nidhub_app/screens/request/request_screen.dart';
import 'package:nidhub_app/screens/review_offers/review_offers_screen.dart';
import 'package:nidhub_app/screens/sign_in/sign_in_screen.dart';
import 'package:nidhub_app/screens/splash/splash_screen.dart';
// import 'package:shop_app/screens/cart/cart_screen.dart';
// import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
// import 'package:shop_app/screens/details/details_screen.dart';
// import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
// import 'package:shop_app/screens/home/home_screen.dart';
// import 'package:shop_app/screens/login_success/login_success_screen.dart';
// import 'package:shop_app/screens/otp/otp_screen.dart';
// import 'package:shop_app/screens/profile/profile_screen.dart';
// import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
// import 'package:shop_app/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  // CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  RequestScreen.routeName: (context) => const RequestScreen(),
  FormScreen.routeName: (context) => const FormScreen(),
  ReviewOffersScreen.routeName: (context) => const ReviewOffersScreen(),
  PlaceOffer.routeName: (context) => const PlaceOffer(),

  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};
