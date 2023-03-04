class OnboardingData {
  final String title;
  final String subtilte;
  final String lottiefile;

  OnboardingData(
      {required this.title,
      required this.subtilte,
      required this.lottiefile});
}

List<OnboardingData> tabs = [
  OnboardingData(
      title: 'Freshly Prepared',
      subtilte: 'Na Today Food',
      lottiefile: 'assets/restaurant-order.json'),
  OnboardingData(
      title: 'Delivery',
      subtilte:
          'Get your favorite dishes anywhere at anytime.',
      lottiefile: 'assets/pick-up.json')
];
