import 'package:evently/providers/config_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'evently_app.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ConfigProvider(), child: const EventlyApp()));
}
