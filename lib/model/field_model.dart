part of azure_devops_sdk.api;

class FieldModel {
  
  String description = null;
  
  String id = null;
  
  bool isIdentity = null;
  
  String name = null;
  
  String type = null;
  //enum typeEnum {  string,  integer,  dateTime,  plainText,  html,  treePath,  history,  double,  guid,  boolean,  identity,  picklistInteger,  picklistString,  picklistDouble,  };{
  
  String url = null;
  FieldModel();

  @override
  String toString() {
    return 'FieldModel[description=$description, id=$id, isIdentity=$isIdentity, name=$name, type=$type, url=$url, ]';
  }

  FieldModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['isIdentity'] == null) {
      isIdentity = null;
    } else {
          isIdentity = json['isIdentity'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (isIdentity != null)
      json['isIdentity'] = isIdentity;
    if (name != null)
      json['name'] = name;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<FieldModel> listFromJson(List<dynamic> json) {
    return json == null ? List<FieldModel>() : json.map((value) => FieldModel.fromJson(value)).toList();
  }

  static Map<String, FieldModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FieldModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FieldModel.fromJson(value));
    }
    return map;
  }
}

