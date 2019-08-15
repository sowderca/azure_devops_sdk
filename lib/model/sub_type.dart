part of azure_devops_sdk.api;

class SubType {
  
  int count = null;
  
  List<ErrorDetails> errorDetailList = [];
  
  int occurrences = null;
  
  String subTypeName = null;
  
  String url = null;
  SubType();

  @override
  String toString() {
    return 'SubType[count=$count, errorDetailList=$errorDetailList, occurrences=$occurrences, subTypeName=$subTypeName, url=$url, ]';
  }

  SubType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
    if (json['errorDetailList'] == null) {
      errorDetailList = null;
    } else {
      errorDetailList = ErrorDetails.listFromJson(json['errorDetailList']);
    }
    if (json['occurrences'] == null) {
      occurrences = null;
    } else {
          occurrences = json['occurrences'];
    }
    if (json['subTypeName'] == null) {
      subTypeName = null;
    } else {
          subTypeName = json['subTypeName'];
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
    if (errorDetailList != null)
      json['errorDetailList'] = errorDetailList;
    if (occurrences != null)
      json['occurrences'] = occurrences;
    if (subTypeName != null)
      json['subTypeName'] = subTypeName;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<SubType> listFromJson(List<dynamic> json) {
    return json == null ? List<SubType>() : json.map((value) => SubType.fromJson(value)).toList();
  }

  static Map<String, SubType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SubType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SubType.fromJson(value));
    }
    return map;
  }
}

