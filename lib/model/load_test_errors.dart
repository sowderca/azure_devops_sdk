part of azure_devops_sdk.api;

class LoadTestErrors {
  
  int count = null;
  
  int occurrences = null;
  
  List<Type> types = [];
  
  String url = null;
  LoadTestErrors();

  @override
  String toString() {
    return 'LoadTestErrors[count=$count, occurrences=$occurrences, types=$types, url=$url, ]';
  }

  LoadTestErrors.fromJson(Map<String, dynamic> json) {
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
    if (json['types'] == null) {
      types = null;
    } else {
      types = Type.listFromJson(json['types']);
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
    if (types != null)
      json['types'] = types;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<LoadTestErrors> listFromJson(List<dynamic> json) {
    return json == null ? List<LoadTestErrors>() : json.map((value) => LoadTestErrors.fromJson(value)).toList();
  }

  static Map<String, LoadTestErrors> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoadTestErrors>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoadTestErrors.fromJson(value));
    }
    return map;
  }
}

