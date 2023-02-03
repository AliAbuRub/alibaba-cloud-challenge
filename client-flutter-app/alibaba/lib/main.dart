import 'package:alibaba/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:alibaba/constant.dart';
import 'package:alibaba/widgets/bottom_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  );

  runApp(const ProviderScope(child: CryptoWallet()));
}

class CryptoWallet extends StatelessWidget {
  const CryptoWallet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              title: 'Crypto Wallet',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                fontFamily: 'SFUIDisplay',
                scaffoldBackgroundColor: kPrimaryColor,
              ),
              home: const LoginScreen());
        });
  }
}
