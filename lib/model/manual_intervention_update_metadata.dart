part of azure_devops_sdk.api;

class ManualInterventionUpdateMetadata {
  /* Sets the comment for manual intervention update. */
  String comment = null;
  /* Sets the status of the manual intervention. */
  String status = null;
  //enum statusEnum {  unknown,  pending,  rejected,  approved,  canceled,  };{
  ManualInterventionUpdateMetadata();

  @override
  String toString() {
    return 'ManualInterventionUpdateMetadata[comment=$comment, status=$status, ]';
  }

  ManualInterventionUpdateMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
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
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<ManualInterventionUpdateMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<ManualInterventionUpdateMetadata>() : json.map((value) => ManualInterventionUpdateMetadata.fromJson(value)).toList();
  }

  static Map<String, ManualInterventionUpdateMetadata> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ManualInterventionUpdateMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ManualInterventionUpdateMetadata.fromJson(value));
    }
    return map;
  }
}

