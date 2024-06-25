class HomeCategoriesModel {
  String? image;
  String? title;

  HomeCategoriesModel({this.image, this.title});

  static List<HomeCategoriesModel> data = [
    HomeCategoriesModel(image: 'assets/images/home/img_2.png', title: 'School'),
    HomeCategoriesModel(image: 'assets/images/home/img_3.png', title: 'Office'),
    HomeCategoriesModel(image: 'assets/images/home/img_4.png', title: 'Papers'),
    HomeCategoriesModel(
        image: 'assets/images/home/img_5.png', title: 'Colors & Art'),
    HomeCategoriesModel(image: 'assets/images/home/img_6.png', title: 'Pen'),
    HomeCategoriesModel(
        image: 'assets/images/home/img_7.png', title: 'Toys & Gifts'),
    HomeCategoriesModel(
        image: 'assets/images/home/img_8.png', title: 'Measuring'),
  ];
}

class HomeProductsModel {
  int? id;
  String? image;
  String? description;
  String? currency;
  String? offerPercentage;
  String? oldPrice;
  double? currentPrice;
  double? rating;

  HomeProductsModel(
      {this.id,
      this.image,
      this.description,
      this.currency,
      this.offerPercentage,
      this.currentPrice,
      this.oldPrice,
      this.rating});

  static List<HomeProductsModel> recommended = [
    HomeProductsModel(
      image: 'assets/images/home/products/recommended/img.png',
      description: 'Post-it 654-5uc Sticky Notes,3*3 in assorted,pk24',
      currency: 'EGP',
      currentPrice: 94.99,
      oldPrice: '102.00',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/recommended/img_1.png',
      description: 'Casio fx-570esplus-2wdtv digital calculator - black',
      currency: 'EGP',
      currentPrice: 1079.90,
      oldPrice: '1099.90',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/recommended/img_2.png',
      description: 'Textliner Highlighter Pen 48 premotion 6+2',
      currency: 'EGP',
      currentPrice: 210.00,
      oldPrice: '213.00',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/recommended/img_3.png',
      description: 'DELFINO set Math Geometry tools plastic 8pcs',
      currency: 'EGP',
      currentPrice: 150.00,
      oldPrice: '155.00',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/recommended/img_4.png',
      description: 'Faber-Castell Eraser,Black,120245',
      currency: 'EGP',
      currentPrice: 20.00,
      oldPrice: '22.00',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/recommended/img_5.png',
      description: 'Plastic sharpener universe with container ,color ,Assorted',
      currency: 'EGP',
      currentPrice: 25.00,
      oldPrice: '30.00',
      offerPercentage: '10%',
    ),
  ];
  static List<HomeProductsModel> office = [
    HomeProductsModel(
      image: 'assets/images/home/products/office/img.png',
      description: 'Hrimtd 40 pieces Double clip clips 19 mm',
      currency: 'EGP',
      currentPrice: 122.99,
      oldPrice: '125.00',
      offerPercentage: '20%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/office/img_1.png',
      description: 'Jaguar fl-b9 stapler black',
      currency: 'EGP',
      currentPrice: 182.0,
      oldPrice: '192.00',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/office/img_2.png',
      description: 'Mesh pen cup metal pencil for Desk 6 packs',
      currency: 'EGP',
      currentPrice: 280.0,
      oldPrice: '288.00',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/office/img_3.png',
      description: 'Wooden Vintage Calender Desk Wooden Office',
      currency: 'EGP',
      currentPrice: 225.0,
      oldPrice: '230.00',
      offerPercentage: '10%',
    ),
  ];
  static List<HomeProductsModel> school = [
    HomeProductsModel(
      image: 'assets/images/home/products/school/img.png',
      description: 'Frozen value pack 5 in 1- trolley18',
      currency: 'EGP',
      currentPrice: 2099,
      oldPrice: '2100.0',
      offerPercentage: '20%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/school/img_1.png',
      description: 'lunch box break 2 liters',
      currency: 'EGP',
      currentPrice: 118.0,
      oldPrice: '120.00',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/school/img_2.png',
      description: 'premium 100 page notebook -lilo and stitch (15*8 in)',
      currency: 'EGP',
      currentPrice: 85.65,
      oldPrice: '90.00',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/school/img_3.png',
      description: 'Creanoso teacher Reward motivational for Stickers',
      currency: 'EGP',
      currentPrice: 117.0,
      oldPrice: '125.00',
      offerPercentage: '10%',
    ),
  ];
  static List<HomeProductsModel> pen = [
    HomeProductsModel(
      image: 'assets/images/home/products/pen/img.png',
      description: 'Uniball PIN 200 fineline Drawing',
      currency: 'EGP',
      currentPrice: 46.00,
      oldPrice: '50.00',
      offerPercentage: '20%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/pen/img_1.png',
      description: 'Valkyrie touch Marker art set of 48',
      currency: 'EGP',
      currentPrice: 333.0,
      oldPrice: '340.00',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/pen/img_2.png',
      description: 'Uni -ball Eys UB-157 Rollerball bens 0.7mm Nib pack',
      currency: 'EGP',
      currentPrice: 295.8,
      oldPrice: '200.00',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/pen/img_3.png',
      description: 'BTS Cartoon Animal pens black ink writing pen',
      currency: 'EGP',
      currentPrice: 150.0,
      oldPrice: '155.00',
      offerPercentage: '10%',
    ),
  ];
  static List<HomeProductsModel> papers = [
    HomeProductsModel(
      image: 'assets/images/home/products/papers/img.png',
      description: 'XUBX 20pcs Glitter foam sheets,A4 shiny Glittery',
      currency: 'EGP',
      currentPrice: 145.00,
      oldPrice: '115.00',
      offerPercentage: '20%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/papers/img_1.png',
      description: 'N|C3D Carbon fiber &Vinyl car',
      currency: 'EGP',
      currentPrice: 149.0,
      oldPrice: '160.00',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/papers/img_2.png',
      description: 'Stitch &Angel premium Design notebook',
      currency: 'EGP',
      currentPrice: 84.00,
      oldPrice: '100.00',
      offerPercentage: '10%',
    ),
    HomeProductsModel(
      image: 'assets/images/home/products/papers/img_3.png',
      description: 'A5 SKETCHBOOK notePAD FOR AETIST SKETCH',
      currency: 'EGP',
      currentPrice: 245.0,
      oldPrice: '230.00',
      offerPercentage: '10%',
    ),
  ];

  // static Map<String, List<HomeProductsModel>> data = {
  //   'Office': [
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/office/img.png',
  //       description: 'Hrimtd 40 pieces Double clip clips 19 mm',
  //       currency: 'EGP',
  //       currentPrice: 122.99,
  //       oldPrice: '125.00',
  //       offerPercentage: '20%',
  //     ),
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/office/img_1.png',
  //       description: 'Jaguar fl-b9 stapler black',
  //       currency: 'EGP',
  //       currentPrice: 182.0,
  //       oldPrice: '192.00',
  //     ),
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/office/img_2.png',
  //       description: 'Mesh pen cup metal pencil for Desk 6 packs',
  //       currency: 'EGP',
  //       currentPrice: 280.0,
  //       oldPrice: '288.00',
  //     ),
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/office/inbox.png',
  //       description: 'Wooden Vintage Calender Desk Wooden Office',
  //       currency: 'EGP',
  //       currentPrice: 225.0,
  //       oldPrice: '230.00',
  //     ),
  //   ],
  //   'School': [
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/school/img.png',
  //       description: 'Frozen value pack 5 in 1- trolley18',
  //       currency: 'EGP',
  //       currentPrice: 2099,
  //       oldPrice: '2100.0',
  //       offerPercentage: '20%',
  //     ),
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/school/img_1.png',
  //       description: 'lunch box break 2 liters',
  //       currency: 'EGP',
  //       currentPrice: 118.0,
  //       oldPrice: '120.00',
  //     ),
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/school/img_2.png',
  //       description: 'premium 100 page notebook -lilo and stitch (15*8 in)',
  //       currency: 'EGP',
  //       currentPrice: 85.65,
  //       oldPrice: '90.00',
  //     ),
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/school/inbox.png',
  //       description: 'Creanoso teacher Reward motivational for Stickers',
  //       currency: 'EGP',
  //       currentPrice: 117.0,
  //       oldPrice: '125.00',
  //     ),
  //   ],
  //   'Papers': [
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/papers/img.png',
  //       description: 'XUBX 20pcs Glitter foam sheets,A4 shiny Glittery',
  //       currency: 'EGP',
  //       currentPrice: 145.00,
  //       oldPrice: '115.00',
  //       offerPercentage: '20%',
  //     ),
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/papers/img_1.png',
  //       description: 'N|C3D Carbon fiber &Vinyl car',
  //       currency: 'EGP',
  //       currentPrice: 149.0,
  //       oldPrice: '160.00',
  //     ),
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/papers/img_2.png',
  //       description: 'Stitch &Angel premium Design notebook',
  //       currency: 'EGP',
  //       currentPrice: 84.00,
  //       oldPrice: '100.00',
  //     ),
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/papers/inbox.png',
  //       description: 'A5 SKETCHBOOK notePAD FOR AETIST SKETCH',
  //       currency: 'EGP',
  //       currentPrice: 245.0,
  //       oldPrice: '230.00',
  //     ),
  //   ],
  //   'Pen': [
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/pen/img.png',
  //       description: 'Uniball PIN 200 fineline Drawing',
  //       currency: 'EGP',
  //       currentPrice: 46.00,
  //       oldPrice: '50.00',
  //       offerPercentage: '20%',
  //     ),
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/pen/img_1.png',
  //       description: 'Valkyrie touch Marker art set of 48',
  //       currency: 'EGP',
  //       currentPrice: 333.0,
  //       oldPrice: '340.00',
  //     ),
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/pen/img_2.png',
  //       description: 'Uni -ball Eys UB-157 Rollerball bens 0.7mm Nib pack',
  //       currency: 'EGP',
  //       currentPrice: 295.8,
  //       oldPrice: '200.00',
  //     ),
  //     HomeProductsModel(
  //       image: 'assets/images/home/products/pen/inbox.png',
  //       description: 'BTS Cartoon Animal pens black ink writing pen',
  //       currency: 'EGP',
  //       currentPrice: 150.0,
  //       oldPrice: '155.00',
  //     ),
  //   ],
  //   'Measuring': [],
  //   'Toys & Gifts': [],
  //   'Colors & Art': [],
  // };
}
