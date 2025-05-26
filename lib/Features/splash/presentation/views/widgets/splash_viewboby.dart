import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SplashViewboby extends StatefulWidget {
  const SplashViewboby({super.key});

  @override
  State<SplashViewboby> createState() => _SplashViewbobyState();
}

class _SplashViewbobyState extends State<SplashViewboby>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initslidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 10),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initslidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {});
    });
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () => const HomeView(),
        transition: Transition.leftToRightWithFade,
        duration: kTranstionDuration,
      );
    });
  }
}
