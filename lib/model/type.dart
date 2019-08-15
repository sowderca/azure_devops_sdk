part of azure_devops_sdk.api;

class Type {
  
  int count = null;
  
  int occurrences = null;
  
  List<SubType> subTypes = [];
  
  String typeName = null;
  
  String url = null;
  Type();

  @override
  String toString() {
    return 'Type[count=$count, occurrences=$occurrences, subTypes=$subTypes, typeName=$typeName, url=$url, ]';
  }

  Type.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['occurrences'] == null) {
      occurrences = null;
    } else {
          occurrences = json['occurrences'];
    }
    if (json['subTypes'] == null) {
      subTypes = null;
    } else {
      subTypes = SubType.listFromJson(json['subTypes']);
    }
    if (json['typeName'] == null) {
      typeName = null;
    } else {
          typeName = json['typeName'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (occurrences != null)
      json['occurrences'] = occurrences;
    if (subTypes != null)
      json['subTypes'] = subTypes;
    if (typeName != null)
      json['typeName'] = typeName;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<Type> listFromJson(List<dynamic> json) {
    return json == null ? List<Type>() : json.map((value) => Type.fromJson(value)).toList();
  }

  static Map<String, Type> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Type>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Type.fromJson(value));
    }
    return map;
  }
}

