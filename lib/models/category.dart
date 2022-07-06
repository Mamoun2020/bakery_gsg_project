class Category{
  String? image;
  String? title;

  Category({this.image,this.title});

  Category.fromMap(Map<String,dynamic> map){
    image = map['image'];
    title = map['title'];
  }

  Map<String,dynamic> toMap(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['image'] = image;
    data['title'] = title;
    return data;
  }
}