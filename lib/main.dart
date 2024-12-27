import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:order_ready/bloc/counter/counter_cubit.dart';
import 'package:order_ready/bloc/onboarding_cubit/on_boarding_cubit.dart';
import 'package:order_ready/bloc/switch_lang/switch_cubit.dart';
import 'package:order_ready/routes.dart';
import 'package:order_ready/view/screen/splash_screen.dart';

import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await GetStorage.init();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path: 'lang',
        fallbackLocale: const Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CounterCubit(),
          ),
          BlocProvider(
            create: (context) => OnBoardingCubit(),
          ),
          BlocProvider(
            create: (context) => SwitchCubit(),
          ),
        ],
        child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          // locale: (box.read("enLang") == null)
          //     ? context.locale
          //     : (box.read("enLang") == true)
          //         ? Locale("en")
          //         : Locale("ar"),
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
          routes: routes,
        ),
      ),
    );
  }
}

/*     if (context.locale.languageCode == 'en') {
(box.read("enLang") == true)?
                   context.setLocale(Locale('en'))
                  : context.setLocale(Locale('ar'))
              } else {
                ;
              }
*/
