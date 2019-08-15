part of azure_devops_sdk.api;

class GraphFederatedProviderData {
  /* The access token that can be used to communicated with the federated provider on behalf on the target identity, if we were able to successfully acquire one, otherwise <code>null</code>, if we were not. */
  String accessToken = null;
  /* The name of the federated provider, e.g. \"github.com\". */
  String providerName = null;
  /* The descriptor of the graph subject to which this federated provider data corresponds. */
  String subjectDescriptor = null;
  /* The version number of this federated provider data, which corresponds to when it was last updated. Can be used to prevent returning stale provider data from the cache when the caller is aware of a newer version, such as to prevent local cache poisoning from a remote cache or store. This is the app layer equivalent of the data layer sequence ID. */
  int version = null;
  GraphFederatedProviderData();

  @override
  String toString() {
    return 'GraphFederatedProviderData[accessToken=$accessToken, providerName=$providerName, subjectDescriptor=$subjectDescriptor, version=$version, ]';
  }

  GraphFederatedProviderData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['accessToken'] == null) {
      accessToken = null;
    } else {
          accessToken = json['accessToken'];
    }
    if (json['providerName'] == null) {
      providerName = null;
    } else {
          providerName = json['providerName'];
    }
    if (json['subjectDescriptor'] == null) {
      subjectDescriptor = null;
    } else {
          subjectDescriptor = json['subjectDescriptor'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accessToken != null)
      json['accessToken'] = accessToken;
    if (providerName != null)
      json['providerName'] = providerName;
    if (subjectDescriptor != null)
      json['subjectDescriptor'] = subjectDescriptor;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<GraphFederatedProviderData> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphFederatedProviderData>() : json.map((value) => GraphFederatedProviderData.fromJson(value)).toList();
  }

  static Map<String, GraphFederatedProviderData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphFederatedProviderData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphFederatedProviderData.fromJson(value));
    }
    return map;
  }
}

