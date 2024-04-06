class ProfileModel {
  String? title;
  String? iconImage;

  ProfileModel({this.title, this.iconImage});

  static List<ProfileModel> data = [
    ProfileModel(title: 'Orders', iconImage: 'assets/images/icons/img_20.png'),
    ProfileModel(title: 'Inbox', iconImage: 'assets/images/icons/img_21.png'),
    ProfileModel(title: 'Saved Items', iconImage: 'assets/images/icons/img_22.png'),
    ProfileModel(title: 'Notification', iconImage: 'assets/images/icons/img_23.png'),
    ProfileModel(title: 'Edit Profile', iconImage: 'assets/images/icons/img_24.png'),
    ProfileModel(title: 'Recently Viewed', iconImage: 'assets/images/icons/img_25.png'),
    ProfileModel(title: 'Recently Searched', iconImage: 'assets/images/icons/img_26.png'),
    ProfileModel(title: 'Change Password', iconImage: 'assets/images/icons/img_27.png'),
    ProfileModel(title: 'Dark Themes', iconImage: 'assets/images/icons/img_28.png'),
    ProfileModel(title: 'Pending Reviews', iconImage: 'assets/images/icons/img_29.png')
  ];
}
