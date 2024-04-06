class HelpModel {
  String? title;
  String? iconImage;

  HelpModel({this.title, this.iconImage});

  static List<HelpModel> data = [
    HelpModel(title: 'Terms & Condition', iconImage: 'assets/images/icons/img_10.png'),
    HelpModel(title: 'Support', iconImage: 'assets/images/icons/img_11.png'),
    HelpModel(title: 'Contact us', iconImage: 'assets/images/icons/img_12.png'),
    HelpModel(title: 'What’s New', iconImage: 'assets/images/icons/img_13.png'),
    HelpModel(title: 'Categories', iconImage: 'assets/images/icons/img_14.png'),
    HelpModel(title: 'Privacy Policy', iconImage: 'assets/images/icons/img_15.png'),
    HelpModel(title: 'language', iconImage: 'assets/images/icons/img_16.png'),
    HelpModel(title: 'Frequent Questions', iconImage: 'assets/images/icons/img_17.png')
  ];
}
