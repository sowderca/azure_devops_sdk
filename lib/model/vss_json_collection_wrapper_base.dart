part of azure_devops_sdk.api;

class VssJsonCollectionWrapperBase {
  
  int count = null;
  VssJsonCollectionWrapperBase();

  @override
  String toString() {
    return 'VssJsonCollectionWrapperBase[count=$count, ]';
  }

  VssJsonCollectionWrapperBase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['count'] == null) {
      count = null;
    } else {
          count = json['count'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    return json;
  }

  static List<VssJsonCollectionWrapperBase> listFromJson(List<dynamic> json) {
    return json == null ? List<VssJsonCollectionWrapperBase>() : json.map((value) => VssJsonCollectionWrapperBase.fromJson(value)).toList();
  }

  static Map<String, VssJsonCollectionWrapperBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VssJsonCollectionWrapperBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VssJsonCollectionWrapperBase.fromJson(value));
    }
    return map;
  }
}

