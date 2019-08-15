part of azure_devops_sdk.api;

class PackageResult {
  /* Description of the package. */
  String description = null;
  /* List of feeds which contain the matching package. */
  List<FeedInfo> feeds = [];
  /* List of highlighted fields for the match. */
  List<PackageHit> hits = [];
  /* Id of the package. */
  String id = null;
  /* Name of the package. */
  String name = null;
  /* Type of the package. */
  String protocolType = null;
  PackageResult();

  @override
  String toString() {
    return 'PackageResult[description=$description, feeds=$feeds, hits=$hits, id=$id, name=$name, protocolType=$protocolType, ]';
  }

  PackageResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['feeds'] == null) {
      feeds = null;
    } else {
      feeds = FeedInfo.listFromJson(json['feeds']);
    }
    if (json['hits'] == null) {
      hits = null;
    } else {
      hits = PackageHit.listFromJson(json['hits']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['protocolType'] == null) {
      protocolType = null;
    } else {
          protocolType = json['protocolType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (feeds != null)
      json['feeds'] = feeds;
    if (hits != null)
      json['hits'] = hits;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (protocolType != null)
      json['protocolType'] = protocolType;
    return json;
  }

  static List<PackageResult> listFromJson(List<dynamic> json) {
    return json == null ? List<PackageResult>() : json.map((value) => PackageResult.fromJson(value)).toList();
  }

  static Map<String, PackageResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PackageResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PackageResult.fromJson(value));
    }
    return map;
  }
}

