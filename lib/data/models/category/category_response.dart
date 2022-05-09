import 'dart:convert';

/// categories : [{"active":true,"product":[{"active":true,"product":[{"active":true,"created_at":"string","description":"string","id":"string","image":"string","name":"string","order":"0","slug":"string","updated_at":"string"}],"created_at":"string","description":"string","id":"string","image":"string","name":"string","order":"0","slug":"string","updated_at":"string"}],"description":"string","id":"string","image":"string","name":"string","order":"0","slug":"string","wide":true}]
/// count : "0"

CategoryResponse categoryResponseFromJson(String str) =>
    CategoryResponse.fromJson(json.decode(str));

String categoryResponseToJson(CategoryResponse data) =>
    json.encode(data.toJson());

class CategoryResponse {
  CategoryResponse({
    List<Categories>? categories,
    String? count,
  }) {
    _categories = categories;
    _count = count;
  }

  CategoryResponse.fromJson(dynamic json) {
    if (json['categories'] != null) {
      _categories = [];
      json['categories'].forEach((v) {
        _categories?.add(Categories.fromJson(v));
      });
    }
    _count = json['count'];
  }

  List<Categories>? _categories;
  String? _count;

  CategoryResponse copyWith({
    List<Categories>? categories,
    String? count,
  }) =>
      CategoryResponse(
        categories: categories ?? _categories,
        count: count ?? _count,
      );

  List<Categories>? get categories => _categories;

  String? get count => _count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_categories != null) {
      map['categories'] = _categories?.map((v) => v.toJson()).toList();
    }
    map['count'] = _count;
    return map;
  }
}

/// active : true
/// product : [{"active":true,"product":[{"active":true,"created_at":"string","description":"string","id":"string","image":"string","name":"string","order":"0","slug":"string","updated_at":"string"}],"created_at":"string","description":"string","id":"string","image":"string","name":"string","order":"0","slug":"string","updated_at":"string"}]
/// description : "string"
/// id : "string"
/// image : "string"
/// name : "string"
/// order : "0"
/// slug : "string"
/// wide : true

Categories categoriesFromJson(String str) =>
    Categories.fromJson(json.decode(str));

String categoriesToJson(Categories data) => json.encode(data.toJson());

class Categories {
  Categories({
    bool? active,
    List<Products>? product,
    String? description,
    String? id,
    String? image,
    String? name,
    String? order,
    String? slug,
    bool? wide,
  }) {
    _active = active;
    _product = product;
    _description = description;
    _id = id;
    _image = image;
    _name = name;
    _order = order;
    _slug = slug;
    _wide = wide;
  }

  Categories.fromJson(dynamic json) {
    _active = json['active'];
    if (json['product'] != null) {
      _product = [];
      json['product'].forEach((v) {
        _product?.add(Products.fromJson(v));
      });
    }
    _description = json['description'];
    _id = json['id'];
    _image = json['image'];
    _name = json['name'];
    _order = json['order'];
    _slug = json['slug'];
    _wide = json['wide'];
  }

  bool? _active;
  List<Products>? _product;
  String? _description;
  String? _id;
  String? _image;
  String? _name;
  String? _order;
  String? _slug;
  bool? _wide;

  Categories copyWith({
    bool? active,
    List<Products>? product,
    String? description,
    String? id,
    String? image,
    String? name,
    String? order,
    String? slug,
    bool? wide,
  }) =>
      Categories(
        active: active ?? _active,
        product: product ?? _product,
        description: description ?? _description,
        id: id ?? _id,
        image: image ?? _image,
        name: name ?? _name,
        order: order ?? _order,
        slug: slug ?? _slug,
        wide: wide ?? _wide,
      );

  bool? get active => _active;

  List<Products>? get product => _product;

  String? get description => _description;

  String? get id => _id;

  String? get image => _image;

  String? get name => _name;

  String? get order => _order;

  String? get slug => _slug;

  bool? get wide => _wide;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    if (_product != null) {
      map['product'] = _product?.map((v) => v.toJson()).toList();
    }
    map['description'] = _description;
    map['id'] = _id;
    map['image'] = _image;
    map['name'] = _name;
    map['order'] = _order;
    map['slug'] = _slug;
    map['wide'] = _wide;
    return map;
  }
}

/// active : true
/// product : [{"active":true,"created_at":"string","description":"string","id":"string","image":"string","name":"string","order":"0","slug":"string","updated_at":"string"}]
/// created_at : "string"
/// description : "string"
/// id : "string"
/// image : "string"
/// name : "string"
/// order : "0"
/// slug : "string"
/// updated_at : "string"

Products productFromJson(String str) => Products.fromJson(json.decode(str));

String productToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    bool? active,
    List<Products>? product,
    String? createdAt,
    String? description,
    String? id,
    String? image,
    String? name,
    String? order,
    String? slug,
    String? updatedAt,
  }) {
    _active = active;
    _product = product;
    _createdAt = createdAt;
    _description = description;
    _id = id;
    _image = image;
    _name = name;
    _order = order;
    _slug = slug;
    _updatedAt = updatedAt;
  }

  Products.fromJson(dynamic json) {
    _active = json['active'];
    if (json['product'] != null) {
      _product = [];
      json['product'].forEach((v) {
        _product?.add(Products.fromJson(v));
      });
    }
    _createdAt = json['created_at'];
    _description = json['description'];
    _id = json['id'];
    _image = json['image'];
    _name = json['name'];
    _order = json['order'];
    _slug = json['slug'];
    _updatedAt = json['updated_at'];
  }

  bool? _active;
  List<Products>? _product;
  String? _createdAt;
  String? _description;
  String? _id;
  String? _image;
  String? _name;
  String? _order;
  String? _slug;
  String? _updatedAt;

  Products copyWith({
    bool? active,
    List<Products>? product,
    String? createdAt,
    String? description,
    String? id,
    String? image,
    String? name,
    String? order,
    String? slug,
    String? updatedAt,
  }) =>
      Products(
        active: active ?? _active,
        product: product ?? _product,
        createdAt: createdAt ?? _createdAt,
        description: description ?? _description,
        id: id ?? _id,
        image: image ?? _image,
        name: name ?? _name,
        order: order ?? _order,
        slug: slug ?? _slug,
        updatedAt: updatedAt ?? _updatedAt,
      );

  bool? get active => _active;

  List<Products>? get product => _product;

  String? get createdAt => _createdAt;

  String? get description => _description;

  String? get id => _id;

  String? get image => _image;

  String? get name => _name;

  String? get order => _order;

  String? get slug => _slug;

  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    if (_product != null) {
      map['product'] = _product?.map((v) => v.toJson()).toList();
    }
    map['created_at'] = _createdAt;
    map['description'] = _description;
    map['id'] = _id;
    map['image'] = _image;
    map['name'] = _name;
    map['order'] = _order;
    map['slug'] = _slug;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
