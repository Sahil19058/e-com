import 'package:flutter/material.dart';

import '../../../widgets/common_appbar.dart';

class SettingNotificationScreen extends StatelessWidget {
  const SettingNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(title: 'Notification', center: true),

    );
  }
}

