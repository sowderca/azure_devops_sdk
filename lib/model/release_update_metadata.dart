part of azure_devops_sdk.api;

class ReleaseUpdateMetadata {
  /* Sets comment for release. */
  String comment = null;
  /* Set 'true' to exclude the release from retention policies. */
  bool keepForever = null;
  /* Sets list of manual environments. */
  List<String> manualEnvironments = [];
  /* Sets name of the release. */
  String name = null;
  /* Sets status of the release. */
  String status = null;
  //enum statusEnum {  undefined,  draft,  active,  abandoned,  };{
  ReleaseUpdateMetadata();

  @override
  String toString() {
    return 'ReleaseUpdateMetadata[comment=$comment, keepForever=$keepForever, manualEnvironments=$manualEnvironments, name=$name, status=$status, ]';
  }

  ReleaseUpdateMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['keepForever'] == null) {
      keepForever = null;
    } else {
          keepForever = json['keepForever'];
    }
    if (json['manualEnvironments'] == null) {
      manualEnvironments = null;
    } else {
      manualEnvironments = (json['manualEnvironments'] as List).cast<String>();
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (comment != null)
      json['comment'] = comment;
    if (keepForever != null)
      json['keepForever'] = keepForever;
    if (manualEnvironments != null)
      json['manualEnvironments'] = manualEnvironments;
    if (name != null)
      json['name'] = name;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<ReleaseUpdateMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<ReleaseUpdateMetadata>() : json.map((value) => ReleaseUpdateMetadata.fromJson(value)).toList();
  }

  static Map<String, ReleaseUpdateMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReleaseUpdateMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReleaseUpdateMetadata.fromJson(value));
    }
    return map;
  }
}

