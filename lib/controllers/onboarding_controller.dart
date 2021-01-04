import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:onboarding_concept/models/onboarding_info.dart';
import 'package:get/utils.dart';

class OnBoardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();

bool get isLastPage => selectedPageIndex.value == onboardingPages.length -1;

forwardAction(){
  if(!isLastPage)
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
}

List<OnboardingInfo> onboardingPages =[

  OnboardingInfo(
    'assets/harita.png',
    'En yakın mağaza',
    'Size en yakın mağazayı bulmanızı sağlıyoruz.',
  ),
  OnboardingInfo(
    'assets/siparis.png',
    'Telefon Desteği',
    'Telefon ile 7/24 destek sunuyoruz.',
  ),
  OnboardingInfo(
    'assets/teslimat.png',
    'Hızlı Teslimat',
    'Çok hızlı teslimat sağlıyoruz.',
  ),
  OnboardingInfo(
    'assets/odeme.png',
    'Ödeme Yöntemleri',
    'Tüm ödeme yöntemleri geçerlidir.',
  ),

];


}
