import 'package:dog_walking_app/home.dart';
import 'package:dog_walking_app/onboarding.dart';
import 'package:dog_walking_app/signup.dart';
import 'package:flutter/material.dart';

enum Pages {
  onboarding,
  signup,
  home,
}

class PageMapper {
  static Widget getPage(Pages pages) {
    switch (pages) {
      case Pages.onboarding:
        return const Onboarding();
      case Pages.signup:
        return const Signup();
      case Pages.home:
        return const Home();
      default:
        return const Onboarding();
    }
  }
}
