part of azure_devops_sdk.api;

class AttributesContainer {
  /* The attributes stored by the container. */
  Map<String, ProfileAttribute> attributes = {};
  /* The name of the container. */
  String containerName = null;
  /* The maximum revision number of any attribute within the container. */
  int revision = null;
  AttributesContainer();

  @override
  String toString() {
    return 'AttributesContainer[attributes=$attributes, containerName=$containerName, revision=$revision, ]';
  }

  AttributesContainer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attributes'] == null) {
      attributes = null;
    } else {
      attributes = ProfileAttribute.mapFromJson(json['attributes']);
    }
    if (json['containerName'] == null) {
      containerName = null;
    } else {
          containerName = json['containerName'];
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attributes != null)
      json['attributes'] = attributes;
    if (containerName != null)
      json['containerName'] = containerName;
    if (revision != null)
      json['revision'] = revision;
    return json;
  }

  static List<AttributesContainer> listFromJson(List<dynamic> json) {
    return json == null ? List<AttributesContainer>() : json.map((value) => AttributesContainer.fromJson(value)).toList();
  }

  static Map<String, AttributesContainer> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AttributesContainer>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AttributesContainer.fromJson(value));
    }
    return map;
  }
}

