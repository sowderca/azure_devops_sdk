part of azure_devops_sdk.api;

class IterationWorkItems {
  
  ReferenceLinks links = null;
  /* Full http link to the resource */
  String url = null;
  IterationWorkItems();

  @override
  String toString() {
    return 'IterationWorkItems[links=$links, url=$url, ]';
  }

  IterationWorkItems.fromJson(Map<String, dynamic> json) {
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

  static List<IterationWorkItems> listFromJson(List<dynamic> json) {
    return json == null ? List<IterationWorkItems>() : json.map((value) => IterationWorkItems.fromJson(value)).toList();
  }

  static Map<String, IterationWorkItems> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, IterationWorkItems>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = IterationWorkItems.fromJson(value));
    }
    return map;
  }
}

