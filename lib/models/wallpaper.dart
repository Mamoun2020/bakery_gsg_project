class Wallpaper{
  String? image;
  Wallpaper({this.image,});
  Wallpaper.fromMap(Map<String,dynamic> map){
    image = map['image'];
  }
  Map<String,dynamic> toMap(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['image'] = image;
    return data;
  }
}