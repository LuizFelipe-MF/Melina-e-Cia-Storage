class BrandModel {
  BrandModel({
    required this.id,
    required this.name,
    required this.isActive,
    required this.amountProduct,
  });
  late final String id;
  late final String name;
  late final bool isActive;
  late final int amountProduct;
  
  BrandModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    isActive = json['isActive'];
    amountProduct = json['amountProduct'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['isActive'] = isActive;
    _data['amountProduct'] = amountProduct;
    return _data;
  }
}