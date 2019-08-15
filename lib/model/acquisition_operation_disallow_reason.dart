part of azure_devops_sdk.api;

class AcquisitionOperationDisallowReason {
  /* User-friendly message clarifying the reason for disallowance */
  String message = null;
  /* Type of reason for disallowance - AlreadyInstalled, UnresolvedDemand, etc. */
  String type = null;
  AcquisitionOperationDisallowReason();

  @override
  String toString() {
    return 'AcquisitionOperationDisallowReason[message=$message, type=$type, ]';
  }

  AcquisitionOperationDisallowReason.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<AcquisitionOperationDisallowReason> listFromJson(List<dynamic> json) {
    return json == null ? List<AcquisitionOperationDisallowReason>() : json.map((value) => AcquisitionOperationDisallowReason.fromJson(value)).toList();
  }

  static Map<String, AcquisitionOperationDisallowReason> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AcquisitionOperationDisallowReason>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AcquisitionOperationDisallowReason.fromJson(value));
    }
    return map;
  }
}

