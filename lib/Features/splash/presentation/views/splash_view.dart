import 'package:bookly/Features/splash/presentation/views/widgets/splash_viewboby.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Splash Screen'), centerTitle: true),
      body: SplashViewboby(),
    );
  }
}
