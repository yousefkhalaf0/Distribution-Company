class CategoryProductsModel {
  String? image;
  String? description;
  String? currency;
  String? offerPercentage;
  String? oldPrice;
  double? currentPrice;

  CategoryProductsModel(
      {this.image,
      this.description,
      this.currency,
      this.offerPercentage,
      this.currentPrice,
      this.oldPrice});

  static List<CategoryProductsModel> stickyNotes = [
    CategoryProductsModel(
        image: 'assets/images/home/products/office/sticky_notes/img.png',
        description: 'Cute Animal Sticky Notes Pads, Cat Cartoon Kawaii',
        currency: 'EGP',
        offerPercentage: '10%',
        currentPrice: 109.00,
        oldPrice: '123.00'),
    CategoryProductsModel(
        image: 'assets/images/home/products/office/sticky_notes/img_1.png',
        description: 'Post-it 654-5uc Sticky Notes,3*3 in assorted,pk24',
        currency: 'EGP',
        offerPercentage: '10%',
        currentPrice: 94.99,
        oldPrice: '107.00'),
    CategoryProductsModel(
        image: 'assets/images/home/products/office/sticky_notes/img_2.png',
        description: 'Sticky Note Writable Page Markers 20 pieces',
        currency: 'EGP',
        offerPercentage: '10%',
        currentPrice: 89.99,
        oldPrice: '102.00'),
    CategoryProductsModel(
        image: 'assets/images/home/products/office/sticky_notes/img_3.png',
        description: 'Eagle Sticky Notes set & to Do list',
        currency: 'EGP',
        offerPercentage: '10%',
        currentPrice: 340.00,
        oldPrice: '354.00'),
    CategoryProductsModel(
        image: 'assets/images/home/products/office/sticky_notes/img_4.png',
        description: 'Hopax-stick’n 21143 Sticky Notes 42*12mm',
        currency: 'EGP',
        offerPercentage: '10%',
        currentPrice: 20.70,
        oldPrice: '31.00'),
    CategoryProductsModel(
        image: 'assets/images/home/products/office/sticky_notes/img_5.png',
        description: 'Waterproof Transparent colored Sticky Notes',
        currency: 'EGP',
        offerPercentage: '10%',
        currentPrice: 119.00,
        oldPrice: '132.00'),
    CategoryProductsModel(
        image: 'assets/images/home/products/office/sticky_notes/img_6.png',
        description: '400 pcs Page Markers Sticky index',
        currency: 'EGP',
        offerPercentage: '10%',
        currentPrice: 399.00,
        oldPrice: '405.00'),
    CategoryProductsModel(
        image: 'assets/images/home/products/office/sticky_notes/img_7.png',
        description: 'NTBK eng 16*22.5- 60 SHTS (Rideaway)',
        currency: 'EGP',
        offerPercentage: '10%',
        currentPrice: 49.00,
        oldPrice: '62.00'),
  ];
}
