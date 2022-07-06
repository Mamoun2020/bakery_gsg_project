import '../models/wallpaper.dart';

List<Map<String,dynamic>> wallpaper =[
  {
    'image':'assets/images/wallpaper/cake1.jpg'
  },
  {
    'image':'assets/images/wallpaper/cake2.jpg'
  },
  {
    'image':'assets/images/wallpaper/cake3.jpg'
  }
];

List<Wallpaper> wallpapers = wallpaper.map((e) => Wallpaper.fromMap(e)).toList();