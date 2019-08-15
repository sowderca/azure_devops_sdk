part of azure_devops_sdk.api;

class FieldReference {
  /* fieldRefName for the field */
  String referenceName = null;
  /* Full http link to more information about the field */
  String url = null;
  FieldReference();

  @override
  String toString() {
    return 'FieldReference[referenceName=$referenceName, url=$url, ]';
  }

  FieldReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['referenceName'] == null) {
      referenceName = null;
    } else {
          referenceName = json['referenceName'];
    }
    if (json['url'] == null) {
      url = null;
    } else {
          url = json['url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (referenceName != null)
      json['referenceName'] = referenceName;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<FieldReference> listFromJson(List<dynamic> json) {
    return json == null ? List<FieldReference>() : json.map((value) => FieldReference.fromJson(value)).toList();
  }

  static Map<String, FieldReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FieldReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FieldReference.fromJson(value));
    }
    return map;
  }
}

