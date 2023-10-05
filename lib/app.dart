import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itargs/core/themes/app_theme.dart';

import 'core/routes/custom_routes.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  late final _appRouter = ref.watch(AppRouter.provider);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return ScreenUtilInit(
        designSize: const Size(360, 762),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return AppTheme(
            builder: (theme) {
              return MaterialApp.router(
                title: 'itargs',
                debugShowCheckedModeBanner: false,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                routeInformationProvider: _appRouter.routeInformationProvider,
                routerDelegate: _appRouter.routerDelegate,
                routeInformationParser: _appRouter.routeInformationParser,
                theme: theme,
              );
            },
          );
        });
  }
}
