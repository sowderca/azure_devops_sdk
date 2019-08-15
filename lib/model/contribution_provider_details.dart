part of azure_devops_sdk.api;

class ContributionProviderDetails {
  /* Friendly name for the provider. */
  String displayName = null;
  /* Unique identifier for this provider. The provider name can be used to cache the contribution data and refer back to it when looking for changes */
  String name = null;
  /* Properties associated with the provider */
  Map<String, String> properties = {};
  /* Version of contributions associated with this contribution provider. */
  String version = null;
  ContributionProviderDetails();

  @override
  String toString() {
    return 'ContributionProviderDetails[displayName=$displayName, name=$name, properties=$properties, version=$version, ]';
  }

  ContributionProviderDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['displayName'] == null) {
      displayName = null;
    } else {
          displayName = json['displayName'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
          properties = (json['properties'] as Map).cast<String, String>();
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (displayName != null)
      json['displayName'] = displayName;
    if (name != null)
      json['name'] = name;
    if (properties != null)
      json['properties'] = properties;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<ContributionProviderDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<ContributionProviderDetails>() : json.map((value) => ContributionProviderDetails.fromJson(value)).toList();
  }

  static Map<String, ContributionProviderDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContributionProviderDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContributionProviderDetails.fromJson(value));
    }
    return map;
  }
}

