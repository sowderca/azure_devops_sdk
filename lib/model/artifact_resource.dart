part of azure_devops_sdk.api;

class ArtifactResource {
  
  ReferenceLinks links = null;
  /* Type-specific data about the artifact. */
  String data = null;
  /* A link to download the resource. */
  String downloadUrl = null;
  /* Type-specific properties of the artifact. */
  Map<String, String> properties = {};
  /* The type of the resource: File container, version control folder, UNC path, etc. */
  String type = null;
  /* The full http link to the resource. */
  String url = null;
  ArtifactResource();

  @override
  String toString() {
    return 'ArtifactResource[links=$links, data=$data, downloadUrl=$downloadUrl, properties=$properties, type=$type, url=$url, ]';
  }

  ArtifactResource.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['data'] == null) {
      data = null;
    } else {
          data = json['data'];
    }
    if (json['downloadUrl'] == null) {
      downloadUrl = null;
    } else {
          downloadUrl = json['downloadUrl'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
          properties = (json['properties'] as Map).cast<String, String>();
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
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
    if (data != null)
      json['data'] = data;
    if (downloadUrl != null)
      json['downloadUrl'] = downloadUrl;
    if (properties != null)
      json['properties'] = properties;
    if (type != null)
      json['type'] = type;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<ArtifactResource> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactResource>() : json.map((value) => ArtifactResource.fromJson(value)).toList();
  }

  static Map<String, ArtifactResource> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactResource>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactResource.fromJson(value));
    }
    return map;
  }
}

