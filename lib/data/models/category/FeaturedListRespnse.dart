class FeaturedListRespnse {
  FeaturedListRespnse({
    FeaturedList? featuredList,
  }) {
    _featuredList = featuredList;
  }

  FeaturedListRespnse.fromJson(dynamic json) {
    _featuredList = FeaturedList.fromJson(json['featured_list']);
  }

  FeaturedList? _featuredList;

  FeaturedListRespnse copyWith({
    FeaturedList? featuredList,
  }) =>
      FeaturedListRespnse(
        featuredList: featuredList ?? _featuredList,
      );

  FeaturedList? get featuredList => _featuredList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['featured_list'] = _featuredList;
    return map;
  }
}

class FeaturedList {
  FeaturedList({
    String? id,
    String? title,
    String? slug,
    List<Products>? products,
    String? order,
    String? createdAt,
    String? lang,
    bool? active,
    String? description,
  }) {
    _id = id;
    _title = title;
    _slug = slug;
    _products = products;
    _order = order;
    _createdAt = createdAt;
    _lang = lang;
    _active = active;
    _description = description;
  }

  FeaturedList.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _slug = json['slug'];
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
    _order = json['order'];
    _createdAt = json['created_at'];
    _lang = json['lang'];
    _active = json['active'];
    _description = json['description'];
  }

  String? _id;
  String? _title;
  String? _slug;
  List<Products>? _products;
  String? _order;
  String? _createdAt;
  String? _lang;
  bool? _active;
  String? _description;

  FeaturedList copyWith({
    String? id,
    String? title,
    String? slug,
    List<Products>? products,
    String? order,
    String? createdAt,
    String? lang,
    bool? active,
    String? description,
  }) =>
      FeaturedList(
        id: id ?? _id,
        title: title ?? _title,
        slug: slug ?? _slug,
        products: products ?? _products,
        order: order ?? _order,
        createdAt: createdAt ?? _createdAt,
        lang: lang ?? _lang,
        active: active ?? _active,
        description: description ?? _description,
      );

  String? get id => _id;

  String? get title => _title;

  String? get slug => _slug;

  List<Products>? get products => _products;

  String? get order => _order;

  String? get createdAt => _createdAt;

  String? get lang => _lang;

  bool? get active => _active;

  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['slug'] = _slug;
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    map['order'] = _order;
    map['created_at'] = _createdAt;
    map['lang'] = _lang;
    map['active'] = _active;
    map['description'] = _description;
    return map;
  }
}

class Products {
  Products({
    String? id,
    String? name,
    String? slug,
    String? previewText,
    bool? active,
    String? image,
    String? code,
    String? order,
    int? cheapestPrice,
    InStock? inStock,
  }) {
    _id = id;
    _name = name;
    _slug = slug;
    _previewText = previewText;
    _active = active;
    _image = image;
    _code = code;
    _order = order;
    _cheapestPrice = cheapestPrice;
    _inStock = inStock;
  }

  Products.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _slug = json['slug'];
    _previewText = json['preview_text'];
    _active = json['active'];
    _image = json['image'];
    _code = json['code'];
    _order = json['order'];
    _cheapestPrice = json['cheapest_price'];
    _inStock =
        json['inStock'] != null ? InStock.fromJson(json['inStock']) : null;
  }

  String? _id;
  String? _name;
  String? _slug;
  String? _previewText;
  bool? _active;
  String? _image;
  String? _code;
  String? _order;
  int? _cheapestPrice;
  InStock? _inStock;

  Products copyWith({
    String? id,
    String? name,
    String? slug,
    String? previewText,
    bool? active,
    String? image,
    String? code,
    String? order,
    int? cheapestPrice,
    InStock? inStock,
  }) =>
      Products(
        id: id ?? _id,
        name: name ?? _name,
        slug: slug ?? _slug,
        previewText: previewText ?? _previewText,
        active: active ?? _active,
        image: image ?? _image,
        code: code ?? _code,
        order: order ?? _order,
        cheapestPrice: cheapestPrice ?? _cheapestPrice,
        inStock: inStock ?? _inStock,
      );

  String? get id => _id;

  String? get name => _name;

  String? get slug => _slug;

  String? get previewText => _previewText;

  bool? get active => _active;

  String? get image => _image;

  String? get code => _code;

  String? get order => _order;

  int? get cheapestPrice => _cheapestPrice;

  InStock? get inStock => _inStock;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['slug'] = _slug;
    map['preview_text'] = _previewText;
    map['active'] = _active;
    map['image'] = _image;
    map['code'] = _code;
    map['order'] = _order;
    map['cheapest_price'] = _cheapestPrice;
    if (_inStock != null) {
      map['inStock'] = _inStock?.toJson();
    }
    return map;
  }
}

class InStock {
  InStock({
    bool? samarkand,
    bool? tashkentCity,
  }) {
    _samarkand = samarkand;
    _tashkentCity = tashkentCity;
  }

  InStock.fromJson(dynamic json) {
    _samarkand = json['samarkand'];
    _tashkentCity = json['tashkent_city'];
  }

  bool? _samarkand;
  bool? _tashkentCity;

  InStock copyWith({
    bool? samarkand,
    bool? tashkentCity,
  }) =>
      InStock(
        samarkand: samarkand ?? _samarkand,
        tashkentCity: tashkentCity ?? _tashkentCity,
      );

  bool? get samarkand => _samarkand;

  bool? get tashkentCity => _tashkentCity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['samarkand'] = _samarkand;
    map['tashkent_city'] = _tashkentCity;
    return map;
  }
}
