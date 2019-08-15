part of azure_devops_sdk.api;

class GraphProviderInfo {
  /* The descriptor is the primary way to reference the graph subject while the system is running. This field will uniquely identify the same graph subject across both Accounts and Organizations. */
  String descriptor = null;
  /* This represents the name of the container of origin for a graph member. (For MSA this is \"Windows Live ID\", for AAD the tenantID of the directory.) */
  String domain = null;
  /* The type of source provider for the origin identifier (ex: \"aad\", \"msa\") */
  String origin = null;
  /* The unique identifier from the system of origin. (For MSA this is the PUID in hex notation, for AAD this is the object id.) */
  String originId = null;
  GraphProviderInfo();

  @override
  String toString() {
    return 'GraphProviderInfo[descriptor=$descriptor, domain=$domain, origin=$origin, originId=$originId, ]';
  }

  GraphProviderInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['descriptor'] == null) {
      descriptor = null;
    } else {
          descriptor = json['descriptor'];
    }
    if (json['domain'] == null) {
      domain = null;
    } else {
          domain = json['domain'];
    }
    if (json['origin'] == null) {
      origin = null;
    } else {
          origin = json['origin'];
    }
    if (json['originId'] == null) {
      originId = null;
    } else {
          originId = json['originId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (descriptor != null)
      json['descriptor'] = descriptor;
    if (domain != null)
      json['domain'] = domain;
    if (origin != null)
      json['origin'] = origin;
    if (originId != null)
      json['originId'] = originId;
    return json;
  }

  static List<GraphProviderInfo> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphProviderInfo>() : json.map((value) => GraphProviderInfo.fromJson(value)).toList();
  }

  static Map<String, GraphProviderInfo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphProviderInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphProviderInfo.fromJson(value));
    }
    return map;
  }
}

