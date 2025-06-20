class ProductModel {
  ProductModel({
    required this.id,
    required this.salePrice,
    required this.productId,
    required this.brand,
    required this.name,
    required this.imageUrl,
    required this.codeBar,
    required this.description,
    required this.quantity,
  });
  late final String? id;
  late final double? salePrice;
  late final String productId;
  late final ProductBrand brand;
  late final String name;
  late final String? imageUrl;
  late final String codeBar;
  late final String? description;
  late final int? quantity;

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    salePrice = json['salePrice'];
    productId = json['productId'];
    brand = ProductBrand.fromJson(json['brand']);
    name = json['name'];
    imageUrl = json['imageUrl'];
    codeBar = json['codeBar'];
    description = json['description'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['salePrice'] = salePrice;
    _data['productId'] = productId;
    _data['brand'] = brand.toJson();
    _data['name'] = name;
    _data['imageUrl'] = imageUrl;
    _data['codeBar'] = codeBar;
    _data['description'] = description;
    _data['quantity'] = quantity;
    return _data;
  }

  ProductModel.empty() {
    id = '';
    salePrice = 0.0;
    productId = '';
    brand = ProductBrand(id: '', name: '');
    name = '';
    imageUrl = '';
    codeBar = '';
    description = '';
    quantity = 0;
  }
}

class ProductBrand {
  ProductBrand({
    required this.id,
    required this.name,
  });
  late final String id;
  late final String name;

  ProductBrand.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    return _data;
  }
}
