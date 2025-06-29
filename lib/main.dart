import 'package:demo/features/home/presentation/bloc/counter_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:demo/routes/router_config.dart' as router_config;
import 'package:demo/shared/themes/dark_theme.dart' as dark_theme;
import 'package:demo/shared/themes/light_theme.dart' as light_theme;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo/generated/strings.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    TranslationProvider(
      child: DevicePreview(
        isToolbarVisible: true,
        enabled: false,
        defaultDevice: Devices.ios.iPhone13ProMax,
        tools: const [...DevicePreview.defaultTools],
        builder: (context) => const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp.router(
        locale: TranslationProvider.of(context).flutterLocale,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocaleUtils.supportedLocales,
        routerConfig: router_config.RouterConfig.router,
        debugShowCheckedModeBanner: false,
        title: 'Nourish Demo App',
        theme: light_theme.LightTheme.light,
        darkTheme: dark_theme.DarkTheme.dark,
        themeMode: ThemeMode.system,

        // Add any additional configurations or themes here
        // For example, you can add custom fonts, colors, etc.
        // You can also define your own themes or styles here
        // to match your application's design requirements.
        // Example: Adding a custom font
        // fontFamily: 'YourCustomFont',
        // Example: Adding custom colors
        // primaryColor: Colors.blue,
        // accentColor: Colors.orange,
        // Example: Adding custom text styles
        // textTheme: TextTheme(
        //   bodyText1: TextStyle(fontSize: 16, color: Colors.black),
        //   headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        // ),
        // Example: Adding custom button styles
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.blue, // Background color
        //     onPrimary: Colors.white, // Text color
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(8), // Button shape
        //     ),
        //     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Button padding
        //   ),
        // ),
      ),
    );
  }
}
