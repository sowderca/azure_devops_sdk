part of azure_devops_sdk.api;

class ProcessProperties {
  /* Class of the process. */
  String class_ = null;
  //enum class_Enum {  system,  derived,  custom,  };{
  /* Is the process default process. */
  bool isDefault = null;
  /* Is the process enabled. */
  bool isEnabled = null;
  /* ID of the parent process. */
  String parentProcessTypeId = null;
  /* Version of the process. */
  String version = null;
  ProcessProperties();

  @override
  String toString() {
    return 'ProcessProperties[class_=$class_, isDefault=$isDefault, isEnabled=$isEnabled, parentProcessTypeId=$parentProcessTypeId, version=$version, ]';
  }

  ProcessProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['class'] == null) {
      class_ = null;
    } else {
          class_ = json['class'];
    }
    if (json['isDefault'] == null) {
      isDefault = null;
    } else {
          isDefault = json['isDefault'];
    }
    if (json['isEnabled'] == null) {
      isEnabled = null;
    } else {
          isEnabled = json['isEnabled'];
    }
    if (json['parentProcessTypeId'] == null) {
      parentProcessTypeId = null;
    } else {
          parentProcessTypeId = json['parentProcessTypeId'];
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (class_ != null)
      json['class'] = class_;
    if (isDefault != null)
      json['isDefault'] = isDefault;
    if (isEnabled != null)
      json['isEnabled'] = isEnabled;
    if (parentProcessTypeId != null)
      json['parentProcessTypeId'] = parentProcessTypeId;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<ProcessProperties> listFromJson(List<dynamic> json) {
    return json == null ? List<ProcessProperties>() : json.map((value) => ProcessProperties.fromJson(value)).toList();
  }

  static Map<String, ProcessProperties> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProcessProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProcessProperties.fromJson(value));
    }
    return map;
  }
}

