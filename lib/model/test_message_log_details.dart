part of azure_devops_sdk.api;

class TestMessageLogDetails {
  /* Date when the resource is created */
  DateTime dateCreated = null;
  /* Id of the resource */
  int entryId = null;
  /* Message of the resource */
  String message = null;
  TestMessageLogDetails();

  @override
  String toString() {
    return 'TestMessageLogDetails[dateCreated=$dateCreated, entryId=$entryId, message=$message, ]';
  }

  TestMessageLogDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['dateCreated'] == null) {
      dateCreated = null;
    } else {
      dateCreated = DateTime.parse(json['dateCreated']);
    }
    if (json['entryId'] == null) {
      entryId = null;
    } else {
          entryId = json['entryId'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dateCreated != null)
      json['dateCreated'] = dateCreated == null ? null : dateCreated.toUtc().toIso8601String();
    if (entryId != null)
      json['entryId'] = entryId;
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<TestMessageLogDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<TestMessageLogDetails>() : json.map((value) => TestMessageLogDetails.fromJson(value)).toList();
  }

  static Map<String, TestMessageLogDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestMessageLogDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestMessageLogDetails.fromJson(value));
    }
    return map;
  }
}

