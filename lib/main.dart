import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:gg_wallet/home_scrren/bank/transfer_to_bank_screen.dart';
import 'package:gg_wallet/home_scrren/credit_debit/credit_debit_screen.dart';
import 'package:gg_wallet/home_scrren/home_screen.dart';
import 'package:gg_wallet/login_signup_screen/forgot_password_screen.dart';
import 'package:gg_wallet/login_signup_screen/login_screen.dart';
import 'package:gg_wallet/login_signup_screen/signup_screen.dart';
import 'package:gg_wallet/utils/constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.indigo.shade800,
        ),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Strings.loginScreen,
      routes: {
        Strings.loginScreen: (context) => const LoginScreen(),
        Strings.signUpScreen: (context) => const SignUpScreen(),
        Strings.homeScreen: (context) => const HomeScreen(),
        Strings.forgotPasswordScreen: (context) => const ForgotPasswordScreen(),
        Strings.transferBankScreen: (context) => const TransferToBankScreen(),
        Strings.creditDebitScreen: (context) => const CreditDebitScreen(),
      },
    );
  }
}
