part of azure_devops_sdk.api;

class CapacityContractBase {
  
  ReferenceLinks links = null;
  /* Full http link to the resource */
  String url = null;
  CapacityContractBase();

  @override
  String toString() {
    return 'CapacityContractBase[links=$links, url=$url, ]';
  }

  CapacityContractBase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<CapacityContractBase> listFromJson(List<dynamic> json) {
    return json == null ? List<CapacityContractBase>() : json.map((value) => CapacityContractBase.fromJson(value)).toList();
  }

  static Map<String, CapacityContractBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CapacityContractBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CapacityContractBase.fromJson(value));
    }
    return map;
  }
}

