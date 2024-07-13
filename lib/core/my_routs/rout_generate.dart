// import 'package:flutter/material.dart';
// import 'package:language_ai/core/routs/my_routs.dart';
// import 'package:language_ai/feature/Auth/choose_language_screen.dart';
// import 'package:language_ai/feature/Auth/login_screen.dart';
// import 'package:language_ai/feature/Auth/sign_screen.dart';
// import 'package:language_ai/feature/onboarding/onboarding_screen.dart';

// class RouteGenerate {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case MyRouts.onboarding:
//         return MaterialPageRoute(
//             builder: (BuildContext context) => const OnboardingScreen());
//       case MyRouts.login:
//         return MaterialPageRoute(
//             builder: (BuildContext context) => const LoginScreen());
//       case MyRouts.chooseLanguage:
//         return MaterialPageRoute(
//             builder: (BuildContext context) => const ChooseLanguageScreen());
//       case MyRouts.signup:
//         return MaterialPageRoute(
//             builder: (BuildContext context) => const SignupScreen());
//       default:
//         return MaterialPageRoute(
//           builder: (BuildContext context) => Scaffold(
//             body: Center(
//               child: Text(
//                 'No Route for ${settings.name}',
//               ),
//             ),
//           ),
//         );
//     }
//   }
// }
