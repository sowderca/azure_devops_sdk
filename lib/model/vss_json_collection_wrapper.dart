part of azure_devops_sdk.api;

class VssJsonCollectionWrapper {
  
  int count = null;
  VssJsonCollectionWrapper();

  @override
  String toString() {
    return 'VssJsonCollectionWrapper[count=$count, ]';
  }

  VssJsonCollectionWrapper.fromJson(Map<String, dynamic> json) {
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

  static List<VssJsonCollectionWrapper> listFromJson(List<dynamic> json) {
    return json == null ? List<VssJsonCollectionWrapper>() : json.map((value) => VssJsonCollectionWrapper.fromJson(value)).toList();
  }

  static Map<String, VssJsonCollectionWrapper> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VssJsonCollectionWrapper>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VssJsonCollectionWrapper.fromJson(value));
    }
    return map;
  }
}

