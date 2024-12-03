import 'package:flutter/material.dart';
//Colors
class AppColors {
  static const appPurple = Color(0xFF9456F9);
  static const appDarkPurple = Color(0xFF1C0C2B);
  static const appYellow = Color(0xFFF9FFBA);
}
//fonts
const String clashDisplay='ClashDisplay';
//tags
const String coinIconHero='coinIconHero';
//assetpath
const String assetPath='assets/images/';
//images and icons
const String onboardingBannerImage='${assetPath}onboarding-banner.svg';
const String walletIcon='${assetPath}wallet.svg';
const String visaIcon='${assetPath}visa.svg';
const String mastercardIcon='${assetPath}mastercard.svg';
const String sendIcon='${assetPath}send.svg';
const String exchangeIcon='${assetPath}exchange.svg';
const String rippleTileImage='${assetPath}ripple-tile.svg';
const String ethereumTileImage='${assetPath}ethereum-tile.svg';
const String arrowTrendUp='${assetPath}arrow-trend-up.svg';
const String rippleIcon='${assetPath}ripple.svg';
const String ethereumIcon='${assetPath}ethereum.svg';
const String bitcoinIcon='${assetPath}bitcoin.svg';
const String solanaIcon='${assetPath}solana.svg';
const String tronIcon='${assetPath}tron.svg';
//filters
enum PeriodFilterSelection {
  oneday,
  sevendays,
  onemonth,
  sixmonths,
  oneyear
}