part of azure_devops_sdk.api;

class CodeSearchResponse {
  /* A dictionary storing an array of <code>Filter</code> object against each facet. */
  Map<String, List<Filter>> facets = {};
  /* Numeric code indicating any additional information: 0 - Ok, 1 - Account is being reindexed, 2 - Account indexing has not started, 3 - Invalid Request, 4 - Prefix wildcard query not supported, 5 - MultiWords with code facet not supported, 6 - Account is being onboarded, 7 - Account is being onboarded or reindexed, 8 - Top value trimmed to maxresult allowed 9 - Branches are being indexed, 10 - Faceting not enabled, 11 - Work items not accessible, 19 - Phrase queries with code type filters not supported, 20 - Wildcard queries with code type filters not supported. Any other info code is used for internal purpose. */
  int infoCode = null;
  CodeSearchResponse();

  @override
  String toString() {
    return 'CodeSearchResponse[facets=$facets, infoCode=$infoCode, ]';
  }

  CodeSearchResponse.fromJson(Map<String, dynamic> json) {
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

  static List<CodeSearchResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<CodeSearchResponse>() : json.map((value) => CodeSearchResponse.fromJson(value)).toList();
  }

  static Map<String, CodeSearchResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CodeSearchResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CodeSearchResponse.fromJson(value));
    }
    return map;
  }
}

