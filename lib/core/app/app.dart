import 'package:ClickToFood/presentation/home/bloc/change_language/change_language_bloc.dart';
import 'package:ClickToFood/presentation/util/resources/langauge_manager.dart';
import 'package:ClickToFood/presentation/util/resources/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';

GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // final AppPreferences _appPreferences = instance<AppPreferences>();

  // @override
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
    ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChangeLanguageBloc(),
        ),
      ],
      child: BlocBuilder<ChangeLanguageBloc, ChangeLanguageState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: "Owl Commerce",
            locale: state.locale,
            supportedLocales: const [ENGLISH_LOCAL, ARABIC_LOCAL],
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              for (var locale in supportedLocales) {
                if (deviceLocale != null &&
                    deviceLocale.languageCode == locale.languageCode) {
                  return deviceLocale;
                }
              }
              return supportedLocales.first;
            },
            routerConfig: GoRouter(
              navigatorKey: navigatorKey,
              routes: Routes.routes,
            ),

            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
          );
        },
      ),
    );
  }
}
