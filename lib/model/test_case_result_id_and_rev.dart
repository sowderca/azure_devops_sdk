part of azure_devops_sdk.api;

class TestCaseResultIdAndRev {
  
  LegacyTestCaseResultIdentifier id = null;
  
  int revision = null;
  TestCaseResultIdAndRev();

  @override
  String toString() {
    return 'TestCaseResultIdAndRev[id=$id, revision=$revision, ]';
  }

  TestCaseResultIdAndRev.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
      id = LegacyTestCaseResultIdentifier.fromJson(json['id']);
    }
    if (json['revision'] == null) {
      revision = null;
    } else {
          revision = json['revision'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (revision != null)
      json['revision'] = revision;
    return json;
  }

  static List<TestCaseResultIdAndRev> listFromJson(List<dynamic> json) {
    return json == null ? List<TestCaseResultIdAndRev>() : json.map((value) => TestCaseResultIdAndRev.fromJson(value)).toList();
  }

  static Map<String, TestCaseResultIdAndRev> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestCaseResultIdAndRev>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestCaseResultIdAndRev.fromJson(value));
    }
    return map;
  }
}

