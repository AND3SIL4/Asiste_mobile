import 'package:asiste/pages/edit_profile.page.dart';
import 'package:asiste/pages/home.page.dart';
import 'package:asiste/pages/login.page.dart';
import 'package:asiste/pages/main.page.dart';
import 'package:asiste/pages/profile.page.dart';
import 'package:asiste/pages/splash_screen.page.dart';

class AppRouters {
  static final routes = {
    '/splash': (context) => const SplashScreen(),
    '/': (context) => const LoginPage(),
    '/home': (context) => const HomePage(),
    '/main': (context) => MainPage(),
    '/profile': (context) => const ProfilePage(),
    '/edit_profile': (context) => const EditProfilePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const splashScreen = '/splash';
  static const profe = '/profile';
}
