import 'package:flutter/material.dart';
import 'package:study10/widgets/onboarding_page.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {

  final PageController _pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: OnboardingPage(),
      ),
    );
  }
}
