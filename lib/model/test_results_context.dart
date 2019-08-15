part of azure_devops_sdk.api;

class TestResultsContext {
  
  BuildReference build = null;
  
  String contextType = null;
  //enum contextTypeEnum {  build,  release,  };{
  
  ReleaseReference release = null;
  TestResultsContext();

  @override
  String toString() {
    return 'TestResultsContext[build=$build, contextType=$contextType, release=$release, ]';
  }

  TestResultsContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['build'] == null) {
      build = null;
    } else {
      build = BuildReference.fromJson(json['build']);
    }
    if (json['contextType'] == null) {
      contextType = null;
    } else {
          contextType = json['contextType'];
    }
    if (json['release'] == null) {
      release = null;
    } else {
      release = ReleaseReference.fromJson(json['release']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (build != null)
      json['build'] = build;
    if (contextType != null)
      json['contextType'] = contextType;
    if (release != null)
      json['release'] = release;
    return json;
  }

  static List<TestResultsContext> listFromJson(List<dynamic> json) {
    return json == null ? List<TestResultsContext>() : json.map((value) => TestResultsContext.fromJson(value)).toList();
  }

  static Map<String, TestResultsContext> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestResultsContext>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestResultsContext.fromJson(value));
    }
    return map;
  }
}

