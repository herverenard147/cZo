import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:test/onboarding/onboarding.dart';
import 'package:test/screens/home/home.dart';
import 'package:test/screens/profil/info_personnel/info_personnel.dart';
import 'package:test/screens/store/store.dart';
import 'package:test/screens/profil/profil.dart';
import 'package:test/auth/connexion/sigin.dart';
import 'package:test/screens/payement/payement.dart';
import 'package:test/screens/placement/placement.dart';
import 'package:test/auth/recuperation/password_forgot.dart';
import 'package:test/screens/profil/update_profil.dart/update_profil.dart';
import 'package:test/auth/recuperation/forgot_email/password_forgot_email.dart';
import 'package:test/auth/recuperation/forgot_phone/password_forgot_phone.dart';
import 'package:test/welcome.dart';

final Map<String , WidgetBuilder> routes = {
  HomePage.routeNames : (context) => const HomePage(),
  StorePage.routeNames : (context) => StorePage(),
  ProfilPage.routeNames : (context) => ProfilPage(),
  PayementPage.routeNames : (context) => PayementPage(),
  SignInPage.routeNames : (context) => const SignInPage(),
  Onboarding.routeNames : (context) => const Onboarding(),
  UpdatePage.routeNames : (context) => const UpdatePage(),
  PlacementPage.routeNames : (context) => PlacementPage(),
  WelcomePage.routeNames : (context) => const WelcomePage(),
  PasswordForgot.routeNames : (context) => const PasswordForgot(),
  PasswordForgotPhone.routeNames : (context) => const PasswordForgotPhone(),
  PasswordForgotEmail.routeNames : (context) => const PasswordForgotEmail(),
  InfoPersonnelPage.routeNames : (context) => const InfoPersonnelPage(),
  
};
