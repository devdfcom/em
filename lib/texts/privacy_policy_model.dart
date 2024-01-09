import 'package:flutter/material.dart';

@immutable
class PrivacyPolicyModel {
  static const String title = 'Privacy Policy';
  static const String content = '''
  We value the security of your financial and budget data. Estate Manager performs backups of your information, including financial transactions and budget details using Google Drive. These backups are stored on your personal Google Drive, and as the developer, we do not have access to this data. While we make every effort to maintain data integrity, it's important to understand that we cannot guarantee against loss or corruption. To ensure an additional layer of protection, we recommend maintaining an independent backup of your data. Your use of the budget tracking application signifies your acceptance of this backup policy.

All data is stored locally on device using Objectbox for database data and local storage for settings and other preferences. This information is not shared with the developer, unless explicitly shared with the developer.

When leaving feedback for the developer, only the information provided is shared. Any notes/rating/feedback provided in the form will be sent to the developer. The information shared is stated in the popup within the application.
  ''';
  static final DateTime revision = DateTime(2024, 01);
}
