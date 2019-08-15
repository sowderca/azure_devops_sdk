part of azure_devops_sdk.api;

class DeliveryViewData {
  
  String id = null;
  
  int revision = null;
  DeliveryViewData();

  @override
  String toString() {
    return 'DeliveryViewData[id=$id, revision=$revision, ]';
  }

  DeliveryViewData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (revision != null)
      json['revision'] = revision;
    return json;
  }

  static List<DeliveryViewData> listFromJson(List<dynamic> json) {
    return json == null ? List<DeliveryViewData>() : json.map((value) => DeliveryViewData.fromJson(value)).toList();
  }

  static Map<String, DeliveryViewData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeliveryViewData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeliveryViewData.fromJson(value));
    }
    return map;
  }
}

