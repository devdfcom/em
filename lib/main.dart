import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:em_docs/pages/main_page.dart';
import 'package:em_docs/pages/privacy_policy_page.dart';
import 'package:em_docs/pages/terms_of_use_page.dart';
import 'package:em_docs/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  usePathUrlStrategy();
// ignore: missing_provider_scope
  runApp(const MainWeb());
}

class MainWeb extends StatelessWidget {
  const MainWeb({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const appTheme = AppTheme(sourceColor: Colors.blueAccent);

    return MaterialApp(
      title: 'DevDF Estate Manager Docs',
      debugShowCheckedModeBanner: false,
      //Navigation
      routes: {
        '/': (context) => const WebMainPage(),
        '/privacy': (context) => const PrivacyPolicyPage(),
        '/terms': (context) => const TermsOfUsePage(),
      },
      themeMode: ThemeMode.system,
      darkTheme: appTheme.dark(),
      theme: appTheme.light(),
    );
  }
}
