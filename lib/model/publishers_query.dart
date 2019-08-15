part of azure_devops_sdk.api;

class PublishersQuery {
  /* Optional list of publisher ids to restrict the results to */
  List<String> publisherIds = [];
  /* Filter for publisher inputs */
  Map<String, String> publisherInputs = {};
  /* Results from the query */
  List<Publisher> results = [];
  PublishersQuery();

  @override
  String toString() {
    return 'PublishersQuery[publisherIds=$publisherIds, publisherInputs=$publisherInputs, results=$results, ]';
  }

  PublishersQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['publisherIds'] == null) {
      publisherIds = null;
    } else {
      publisherIds = (json['publisherIds'] as List).cast<String>();
    }
    if (json['publisherInputs'] == null) {
      publisherInputs = null;
    } else {
          publisherInputs = (json['publisherInputs'] as Map).cast<String, String>();
    }
    if (json['results'] == null) {
      results = null;
    } else {
      results = Publisher.listFromJson(json['results']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (publisherIds != null)
      json['publisherIds'] = publisherIds;
    if (publisherInputs != null)
      json['publisherInputs'] = publisherInputs;
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<PublishersQuery> listFromJson(List<dynamic> json) {
    return json == null ? List<PublishersQuery>() : json.map((value) => PublishersQuery.fromJson(value)).toList();
  }

  static Map<String, PublishersQuery> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PublishersQuery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PublishersQuery.fromJson(value));
    }
    return map;
  }
}

