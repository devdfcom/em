import 'package:flutter/material.dart';

@immutable
class TermsOfUseModel {
  static const String title = 'Terms of Use';
  static const String content = '''
  By downloading and installing or using this application provided to the user by the developer with the alias Yackers, you agree to the Terms of Use and Privacy Policy. They are subject to change at any point in time.
  
  The app, Estate Manager, is provided to you by DevDF Yackers without warranty of any kind, implied or expressed, as is. The developer will try their best, however, not all data may be accurate, and therefore there is no insurance or guarantee over this accuracy of any kind. The developer is not responsible and cannot be held accountable for any misinformation/incorrect data found within this app, and therefore damages of any kind that may have incurred.

  The developer has the right to change the app, and everything related to it, in any way that they see fit. They hold the right to change any aspect within the app itself, which may include but not limited to: add, remove any features/capabilities, services provided by the app, such as backup and logins, and update/not update data within the app.
  ''';
  static final DateTime revision = DateTime(2024, 01);
}
