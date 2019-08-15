part of azure_devops_sdk.api;

class TestLog {
  
  TestLogReference logReference = null;
  
  Map<String, String> metaData = {};
  /* LastUpdatedDate for Log file */
  DateTime modifiedOn = null;
  /* Size in Bytes for Log file */
  int size = null;
  TestLog();

  @override
  String toString() {
    return 'TestLog[logReference=$logReference, metaData=$metaData, modifiedOn=$modifiedOn, size=$size, ]';
  }

  TestLog.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['logReference'] == null) {
      logReference = null;
    } else {
      logReference = TestLogReference.fromJson(json['logReference']);
    }
    if (json['metaData'] == null) {
      metaData = null;
    } else {
          metaData = (json['metaData'] as Map).cast<String, String>();
    }
    if (json['modifiedOn'] == null) {
      modifiedOn = null;
    } else {
      modifiedOn = DateTime.parse(json['modifiedOn']);
    }
    if (json['size'] == null) {
      size = null;
    } else {
          size = json['size'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (logReference != null)
      json['logReference'] = logReference;
    if (metaData != null)
      json['metaData'] = metaData;
    if (modifiedOn != null)
      json['modifiedOn'] = modifiedOn == null ? null : modifiedOn.toUtc().toIso8601String();
    if (size != null)
      json['size'] = size;
    return json;
  }

  static List<TestLog> listFromJson(List<dynamic> json) {
    return json == null ? List<TestLog>() : json.map((value) => TestLog.fromJson(value)).toList();
  }

  static Map<String, TestLog> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestLog>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestLog.fromJson(value));
    }
    return map;
  }
}

