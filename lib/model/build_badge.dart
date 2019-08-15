part of azure_devops_sdk.api;

class BuildBadge {
  /* The ID of the build represented by this badge. */
  int buildId = null;
  /* A link to the SVG resource. */
  String imageUrl = null;
  BuildBadge();

  @override
  String toString() {
    return 'BuildBadge[buildId=$buildId, imageUrl=$imageUrl, ]';
  }

  BuildBadge.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildId'] == null) {
      buildId = null;
    } else {
          buildId = json['buildId'];
    }
    if (json['imageUrl'] == null) {
      imageUrl = null;
    } else {
          imageUrl = json['imageUrl'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildId != null)
      json['buildId'] = buildId;
    if (imageUrl != null)
      json['imageUrl'] = imageUrl;
    return json;
  }

  static List<BuildBadge> listFromJson(List<dynamic> json) {
    return json == null ? List<BuildBadge>() : json.map((value) => BuildBadge.fromJson(value)).toList();
  }

  static Map<String, BuildBadge> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BuildBadge>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BuildBadge.fromJson(value));
    }
    return map;
  }
}

