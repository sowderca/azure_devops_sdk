part of azure_devops_sdk.api;

class StageReference {
  /* Attempt number of stage */
  int attempt = null;
  /* Name of the stage. Maximum supported length for name is 256 character. */
  String stageName = null;
  StageReference();

  @override
  String toString() {
    return 'StageReference[attempt=$attempt, stageName=$stageName, ]';
  }

  StageReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attempt'] == null) {
      attempt = null;
    } else {
          attempt = json['attempt'];
    }
    if (json['stageName'] == null) {
      stageName = null;
    } else {
          stageName = json['stageName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attempt != null)
      json['attempt'] = attempt;
    if (stageName != null)
      json['stageName'] = stageName;
    return json;
  }

  static List<StageReference> listFromJson(List<dynamic> json) {
    return json == null ? List<StageReference>() : json.map((value) => StageReference.fromJson(value)).toList();
  }

  static Map<String, StageReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, StageReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = StageReference.fromJson(value));
    }
    return map;
  }
}

