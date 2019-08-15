part of azure_devops_sdk.api;

class EntitySearchResponse {
  /* A dictionary storing an array of <code>Filter</code> object against each facet. */
  Map<String, List<Filter>> facets = {};
  /* Numeric code indicating any additional information: 0 - Ok, 1 - Account is being reindexed, 2 - Account indexing has not started, 3 - Invalid Request, 4 - Prefix wildcard query not supported, 5 - MultiWords with code facet not supported, 6 - Account is being onboarded, 7 - Account is being onboarded or reindexed, 8 - Top value trimmed to maxresult allowed 9 - Branches are being indexed, 10 - Faceting not enabled, 11 - Work items not accessible, 19 - Phrase queries with code type filters not supported, 20 - Wildcard queries with code type filters not supported. Any other info code is used for internal purpose. */
  int infoCode = null;
  EntitySearchResponse();

  @override
  String toString() {
    return 'EntitySearchResponse[facets=$facets, infoCode=$infoCode, ]';
  }

  EntitySearchResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['facets'] == null) {
      facets = null;
    } else {
      facets = List.mapFromJson(json['facets']);
    }
    if (json['infoCode'] == null) {
      infoCode = null;
    } else {
          infoCode = json['infoCode'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (facets != null)
      json['facets'] = facets;
    if (infoCode != null)
      json['infoCode'] = infoCode;
    return json;
  }

  static List<EntitySearchResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<EntitySearchResponse>() : json.map((value) => EntitySearchResponse.fromJson(value)).toList();
  }

  static Map<String, EntitySearchResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EntitySearchResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EntitySearchResponse.fromJson(value));
    }
    return map;
  }
}

