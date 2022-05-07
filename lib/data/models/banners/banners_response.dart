import 'dart:convert';
/// banners : [{"active":true,"button_title":"string","description":"string","id":"string","image":"string","lang":"string","position":{"active":true,"created_at":"string","description":"string","id":"string","size":"string","slug":"string","title":"string","updated_at":"string"},"price":0,"slug":"string","title":"string","type":"string","url":"string"}]
/// count : "0"

BannersResponse bannersResponseFromJson(String str) => BannersResponse.fromJson(json.decode(str));
String bannersResponseToJson(BannersResponse data) => json.encode(data.toJson());
class BannersResponse {
  BannersResponse({
      List<Banners>? banners, 
      String? count,}){
    _banners = banners;
    _count = count;
}

  BannersResponse.fromJson(dynamic json) {
    if (json['banners'] != null) {
      _banners = [];
      json['banners'].forEach((v) {
        _banners?.add(Banners.fromJson(v));
      });
    }
    _count = json['count'];
  }
  List<Banners>? _banners;
  String? _count;
BannersResponse copyWith({  List<Banners>? banners,
  String? count,
}) => BannersResponse(  banners: banners ?? _banners,
  count: count ?? _count,
);
  List<Banners>? get banners => _banners;
  String? get count => _count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_banners != null) {
      map['banners'] = _banners?.map((v) => v.toJson()).toList();
    }
    map['count'] = _count;
    return map;
  }

}

/// active : true
/// button_title : "string"
/// description : "string"
/// id : "string"
/// image : "string"
/// lang : "string"
/// position : {"active":true,"created_at":"string","description":"string","id":"string","size":"string","slug":"string","title":"string","updated_at":"string"}
/// price : 0
/// slug : "string"
/// title : "string"
/// type : "string"
/// url : "string"

Banners bannersFromJson(String str) => Banners.fromJson(json.decode(str));
String bannersToJson(Banners data) => json.encode(data.toJson());
class Banners {
  Banners({
      bool? active, 
      String? buttonTitle, 
      String? description, 
      String? id, 
      String? image, 
      String? lang, 
      Position? position, 
      int? price, 
      String? slug, 
      String? title, 
      String? type, 
      String? url,}){
    _active = active;
    _buttonTitle = buttonTitle;
    _description = description;
    _id = id;
    _image = image;
    _lang = lang;
    _position = position;
    _price = price;
    _slug = slug;
    _title = title;
    _type = type;
    _url = url;
}

  Banners.fromJson(dynamic json) {
    _active = json['active'];
    _buttonTitle = json['button_title'];
    _description = json['description'];
    _id = json['id'];
    _image = json['image'];
    _lang = json['lang'];
    _position = json['position'] != null ? Position.fromJson(json['position']) : null;
    _price = json['price'];
    _slug = json['slug'];
    _title = json['title'];
    _type = json['type'];
    _url = json['url'];
  }
  bool? _active;
  String? _buttonTitle;
  String? _description;
  String? _id;
  String? _image;
  String? _lang;
  Position? _position;
  int? _price;
  String? _slug;
  String? _title;
  String? _type;
  String? _url;
Banners copyWith({  bool? active,
  String? buttonTitle,
  String? description,
  String? id,
  String? image,
  String? lang,
  Position? position,
  int? price,
  String? slug,
  String? title,
  String? type,
  String? url,
}) => Banners(  active: active ?? _active,
  buttonTitle: buttonTitle ?? _buttonTitle,
  description: description ?? _description,
  id: id ?? _id,
  image: image ?? _image,
  lang: lang ?? _lang,
  position: position ?? _position,
  price: price ?? _price,
  slug: slug ?? _slug,
  title: title ?? _title,
  type: type ?? _type,
  url: url ?? _url,
);
  bool? get active => _active;
  String? get buttonTitle => _buttonTitle;
  String? get description => _description;
  String? get id => _id;
  String? get image => _image;
  String? get lang => _lang;
  Position? get position => _position;
  int? get price => _price;
  String? get slug => _slug;
  String? get title => _title;
  String? get type => _type;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['button_title'] = _buttonTitle;
    map['description'] = _description;
    map['id'] = _id;
    map['image'] = _image;
    map['lang'] = _lang;
    if (_position != null) {
      map['position'] = _position?.toJson();
    }
    map['price'] = _price;
    map['slug'] = _slug;
    map['title'] = _title;
    map['type'] = _type;
    map['url'] = _url;
    return map;
  }

}

/// active : true
/// created_at : "string"
/// description : "string"
/// id : "string"
/// size : "string"
/// slug : "string"
/// title : "string"
/// updated_at : "string"

Position positionFromJson(String str) => Position.fromJson(json.decode(str));
String positionToJson(Position data) => json.encode(data.toJson());
class Position {
  Position({
      bool? active, 
      String? createdAt, 
      String? description, 
      String? id, 
      String? size, 
      String? slug, 
      String? title, 
      String? updatedAt,}){
    _active = active;
    _createdAt = createdAt;
    _description = description;
    _id = id;
    _size = size;
    _slug = slug;
    _title = title;
    _updatedAt = updatedAt;
}

  Position.fromJson(dynamic json) {
    _active = json['active'];
    _createdAt = json['created_at'];
    _description = json['description'];
    _id = json['id'];
    _size = json['size'];
    _slug = json['slug'];
    _title = json['title'];
    _updatedAt = json['updated_at'];
  }
  bool? _active;
  String? _createdAt;
  String? _description;
  String? _id;
  String? _size;
  String? _slug;
  String? _title;
  String? _updatedAt;
Position copyWith({  bool? active,
  String? createdAt,
  String? description,
  String? id,
  String? size,
  String? slug,
  String? title,
  String? updatedAt,
}) => Position(  active: active ?? _active,
  createdAt: createdAt ?? _createdAt,
  description: description ?? _description,
  id: id ?? _id,
  size: size ?? _size,
  slug: slug ?? _slug,
  title: title ?? _title,
  updatedAt: updatedAt ?? _updatedAt,
);
  bool? get active => _active;
  String? get createdAt => _createdAt;
  String? get description => _description;
  String? get id => _id;
  String? get size => _size;
  String? get slug => _slug;
  String? get title => _title;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['created_at'] = _createdAt;
    map['description'] = _description;
    map['id'] = _id;
    map['size'] = _size;
    map['slug'] = _slug;
    map['title'] = _title;
    map['updated_at'] = _updatedAt;
    return map;
  }

}