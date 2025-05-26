import 'package:bookly/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [CustomAppBar()]);
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 18),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
            // tooltip: 'Search',
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
