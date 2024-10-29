import 'package:get/get.dart';
import 'package:my_notes/bindings/email_verification_binding.dart';
import 'package:my_notes/bindings/login_binding.dart';
import 'package:my_notes/bindings/notes_binding.dart';
import 'package:my_notes/bindings/register_binding.dart';
import 'package:my_notes/bindings/splash_binding.dart';
import 'package:my_notes/page_routes/page_routes.dart';
import 'package:my_notes/pages/email_verification_page.dart';
import 'package:my_notes/pages/login_page.dart';
import 'package:my_notes/pages/notes_page.dart';
import 'package:my_notes/pages/register_page.dart';
import 'package:my_notes/pages/splash_page.dart';

final pages = [
  GetPage(
    name: Routes.login,
    page: () => const LoginPage(),
    binding: LoginBinding(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: Routes.register,
    page: () => const RegisterPage(),
    binding: RegisterBinding(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: Routes.splash,
    page: () => const SplashPage(),
    binding: SplashBinding(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: Routes.verification,
    page: () => const EmailVerificationPage(),
    binding: EmailVerificationBinding(),
    transition: Transition.noTransition,
  ),
  GetPage(
    name: Routes.notes,
    page: () => const NotesPage(),
    binding: NotesBinding(),
    transition: Transition.noTransition,
  ),
  // Add more GetPage definitions as needed
];
