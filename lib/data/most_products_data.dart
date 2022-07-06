import '../models/most_product.dart';


List<Map<String,dynamic>> mostProduct = [
  {
    'image': 'assets/images/mostproducts/mostsweet1.png',
    'name': 'الخبز قمح',
    'price': 50
  },
  {
    'image': 'assets/images/mostproducts/mostsweet2.png',
    'name': 'الخبز قمح',
    'price': 50
  },
  {
    'image': 'assets/images/mostproducts/mostsweet3.png',
    'name': 'الخبز قمح',
    'price': 50
  },
  {
    'image': 'assets/images/mostproducts/mostsweet4.png',
    'name': 'الخبز قمح',
    'price': 50
  },
  {
    'image': 'assets/images/mostproducts/mostsweet5.png',
    'name': 'الخبز قمح',
    'price': 50
  },
  {
    'image': 'assets/images/mostproducts/mostsweet6.png',
    'name': 'الخبز قمح',
    'price': 50
  }
];

List<MostOrderedProduct> mostProducts = mostProduct.map(
        (e) => MostOrderedProduct.fromMap(e),
).toList();

