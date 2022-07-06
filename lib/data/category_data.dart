import '../models/category.dart';

List<Map<String,dynamic>> category = [
  {
    'image':'assets/images/categories/bread.png',
    'title':'خبر'
  },
  {
    'image':'assets/images/categories/cakebread.png',
    'title':'كعك'
  },
  {
    'image':'assets/images/categories/biscuit.png',
    'title':'قرشلة'
  },
  {
    'image':'assets/images/categories/sweet.png',
    'title':'حلويات'
  },
  {
    'image':'assets/images/categories/fatayer.png',
    'title':'فطاير'
  }
];

List<Category> categories = category.map((e) => Category.fromMap(e)).toList();