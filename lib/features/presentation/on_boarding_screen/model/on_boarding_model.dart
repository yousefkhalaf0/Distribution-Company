class OnBoardingModel {
  String? image;
  String? title;
  String? description;

  OnBoardingModel({this.image, this.title, this.description});

  static List<OnBoardingModel> data = [
    OnBoardingModel(
      image: 'assets/images/onboarding/img.png',
      title: 'Unique Experience',
      description:
          'A smooth , secure and fast app to distribute your orders locally',
    ),
    OnBoardingModel(
      image: 'assets/images/onboarding/img_1.png',
      title: 'Effortlessly Distribute',
      description:
          'with our app making it easy for you to organize and enhance the distribution of books and other materials',
    ),
    OnBoardingModel(
        image: 'assets/images/onboarding/img_2.png',
        title: 'Deliver on Time',
        description:
            'A smooth ,fast app to deliver shipments on time , ensuring our customers’ convenience')
  ];
}
