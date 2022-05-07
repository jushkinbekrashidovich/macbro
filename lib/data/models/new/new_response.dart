import 'dart:convert';
/// count : "0"
/// news : [{"active":true,"created_at":"string","description":"string","formatted_date":"string","full_text":"string","id":"string","imageURL":"string","meta":{"description":"string","tags":"string","title":"string"},"preview_image":"string","slug":"string","title":"string","updated_at":"string","video":"string"}]

NewResponse newResponseFromJson(String str) => NewResponse.fromJson(json.decode(str));
String newResponseToJson(NewResponse data) => json.encode(data.toJson());
class NewResponse {
  NewResponse({
      String? count, 
      List<News>? news,}){
    _count = count;
    _news = news;
}

  NewResponse.fromJson(dynamic json) {
    _count = json['count'];
    if (json['news'] != null) {
      _news = [];
      json['news'].forEach((v) {
        _news?.add(News.fromJson(v));
      });
    }
  }
  String? _count;
  List<News>? _news;
NewResponse copyWith({  String? count,
  List<News>? news,
}) => NewResponse(  count: count ?? _count,
  news: news ?? _news,
);
  String? get count => _count;
  List<News>? get news => _news;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = _count;
    if (_news != null) {
      map['news'] = _news?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// active : true
/// created_at : "string"
/// description : "string"
/// formatted_date : "string"
/// full_text : "string"
/// id : "string"
/// imageURL : "string"
/// meta : {"description":"string","tags":"string","title":"string"}
/// preview_image : "string"
/// slug : "string"
/// title : "string"
/// updated_at : "string"
/// video : "string"

News newsFromJson(String str) => News.fromJson(json.decode(str));
String newsToJson(News data) => json.encode(data.toJson());
class News {
  News({
      bool? active, 
      String? createdAt, 
      String? description, 
      String? formattedDate, 
      String? fullText, 
      String? id, 
      String? imageURL, 
      Meta? meta, 
      String? previewImage, 
      String? slug, 
      String? title, 
      String? updatedAt, 
      String? video,}){
    _active = active;
    _createdAt = createdAt;
    _description = description;
    _formattedDate = formattedDate;
    _fullText = fullText;
    _id = id;
    _imageURL = imageURL;
    _meta = meta;
    _previewImage = previewImage;
    _slug = slug;
    _title = title;
    _updatedAt = updatedAt;
    _video = video;
}

  News.fromJson(dynamic json) {
    _active = json['active'];
    _createdAt = json['created_at'];
    _description = json['description'];
    _formattedDate = json['formatted_date'];
    _fullText = json['full_text'];
    _id = json['id'];
    _imageURL = json['imageURL'];
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    _previewImage = json['preview_image'];
    _slug = json['slug'];
    _title = json['title'];
    _updatedAt = json['updated_at'];
    _video = json['video'];
  }
  bool? _active;
  String? _createdAt;
  String? _description;
  String? _formattedDate;
  String? _fullText;
  String? _id;
  String? _imageURL;
  Meta? _meta;
  String? _previewImage;
  String? _slug;
  String? _title;
  String? _updatedAt;
  String? _video;
News copyWith({  bool? active,
  String? createdAt,
  String? description,
  String? formattedDate,
  String? fullText,
  String? id,
  String? imageURL,
  Meta? meta,
  String? previewImage,
  String? slug,
  String? title,
  String? updatedAt,
  String? video,
}) => News(  active: active ?? _active,
  createdAt: createdAt ?? _createdAt,
  description: description ?? _description,
  formattedDate: formattedDate ?? _formattedDate,
  fullText: fullText ?? _fullText,
  id: id ?? _id,
  imageURL: imageURL ?? _imageURL,
  meta: meta ?? _meta,
  previewImage: previewImage ?? _previewImage,
  slug: slug ?? _slug,
  title: title ?? _title,
  updatedAt: updatedAt ?? _updatedAt,
  video: video ?? _video,
);
  bool? get active => _active;
  String? get createdAt => _createdAt;
  String? get description => _description;
  String? get formattedDate => _formattedDate;
  String? get fullText => _fullText;
  String? get id => _id;
  String? get imageURL => _imageURL;
  Meta? get meta => _meta;
  String? get previewImage => _previewImage;
  String? get slug => _slug;
  String? get title => _title;
  String? get updatedAt => _updatedAt;
  String? get video => _video;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = _active;
    map['created_at'] = _createdAt;
    map['description'] = _description;
    map['formatted_date'] = _formattedDate;
    map['full_text'] = _fullText;
    map['id'] = _id;
    map['imageURL'] = _imageURL;
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    map['preview_image'] = _previewImage;
    map['slug'] = _slug;
    map['title'] = _title;
    map['updated_at'] = _updatedAt;
    map['video'] = _video;
    return map;
  }

}

/// description : "string"
/// tags : "string"
/// title : "string"

Meta metaFromJson(String str) => Meta.fromJson(json.decode(str));
String metaToJson(Meta data) => json.encode(data.toJson());
class Meta {
  Meta({
      String? description, 
      String? tags, 
      String? title,}){
    _description = description;
    _tags = tags;
    _title = title;
}

  Meta.fromJson(dynamic json) {
    _description = json['description'];
    _tags = json['tags'];
    _title = json['title'];
  }
  String? _description;
  String? _tags;
  String? _title;
Meta copyWith({  String? description,
  String? tags,
  String? title,
}) => Meta(  description: description ?? _description,
  tags: tags ?? _tags,
  title: title ?? _title,
);
  String? get description => _description;
  String? get tags => _tags;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['description'] = _description;
    map['tags'] = _tags;
    map['title'] = _title;
    return map;
  }

}