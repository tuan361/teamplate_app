import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:teamplate_app/pages/home_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:teamplate_app/utils/theme.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kCoLorPrimary,
      ),
      home: const HomePage(),
    );
  }
}
