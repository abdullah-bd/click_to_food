import 'dart:async';

import 'package:ClickToFood/presentation/util/resources/asset_manger.dart';
import 'package:ClickToFood/presentation/util/resources/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          ImageAssets.applogo,
        ),
      ),
    );
  }

  _startDelay() {
    _timer = Timer(const Duration(milliseconds: 800), _goNext);
  }

  _goNext() async {
    context.go(Routes.authRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
