import '../models/latest_product.dart';

List<Map<String,dynamic>> latestProduct = [
  {
    'image': 'assets/images/latestproducts/sweet1.png',
    'name': 'الخبز قمح',
    'price': 50
  },
  {
    'image': 'assets/images/latestproducts/sweet2.png',
    'name': 'الخبز قمح',
    'price': 50
  },
  {
    'image': 'assets/images/latestproducts/sweet3.png',
    'name': 'الخبز قمح',
    'price': 50
  }
];

List<LatestProduct> latestProducts = latestProduct.map(
        (e) => LatestProduct.fromMap(e),
).toList();

