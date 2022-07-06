class LatestProduct{
  String? image;
  String? name;
  int? price;

  LatestProduct.fromMap(Map<String, dynamic> data){
    image = data['image'];
    name = data['name'];
    price = data['price'];
  }

  Map<String, dynamic> toMap(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = image;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}