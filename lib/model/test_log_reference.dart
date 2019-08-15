part of azure_devops_sdk.api;

class TestLogReference {
  /* BuildId for test log, if context is build */
  int buildId = null;
  /* FileName for log file */
  String filePath = null;
  /* ReleaseEnvId for test log, if context is Release */
  int releaseEnvId = null;
  /* ReleaseId for test log, if context is Release */
  int releaseId = null;
  /* Resultid for test log, if context is run and log is related to result */
  int resultId = null;
  /* runid for test log, if context is run */
  int runId = null;
  /* Test Log Reference object */
  String scope = null;
  //enum scopeEnum {  run,  build,  release,  };{
  /* SubResultid for test log, if context is run and log is related to subresult */
  int subResultId = null;
  /* Log Type */
  String type = null;
  //enum typeEnum {  generalAttachment,  codeCoverage,  testImpact,  intermediate,  };{
  TestLogReference();

  @override
  String toString() {
    return 'TestLogReference[buildId=$buildId, filePath=$filePath, releaseEnvId=$releaseEnvId, releaseId=$releaseId, resultId=$resultId, runId=$runId, scope=$scope, subResultId=$subResultId, type=$type, ]';
  }

  TestLogReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['buildId'] == null) {
      buildId = null;
    } else {
          buildId = json['buildId'];
    }
    if (json['filePath'] == null) {
      filePath = null;
    } else {
          filePath = json['filePath'];
    }
    if (json['releaseEnvId'] == null) {
      releaseEnvId = null;
    } else {
          releaseEnvId = json['releaseEnvId'];
    }
    if (json['releaseId'] == null) {
      releaseId = null;
    } else {
          releaseId = json['releaseId'];
    }
    if (json['resultId'] == null) {
      resultId = null;
    } else {
          resultId = json['resultId'];
    }
    if (json['runId'] == null) {
      runId = null;
    } else {
          runId = json['runId'];
    }
    if (json['scope'] == null) {
      scope = null;
    } else {
          scope = json['scope'];
    }
    if (json['subResultId'] == null) {
      subResultId = null;
    } else {
          subResultId = json['subResultId'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (buildId != null)
      json['buildId'] = buildId;
    if (filePath != null)
      json['filePath'] = filePath;
    if (releaseEnvId != null)
      json['releaseEnvId'] = releaseEnvId;
    if (releaseId != null)
      json['releaseId'] = releaseId;
    if (resultId != null)
      json['resultId'] = resultId;
    if (runId != null)
      json['runId'] = runId;
    if (scope != null)
      json['scope'] = scope;
    if (subResultId != null)
      json['subResultId'] = subResultId;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<TestLogReference> listFromJson(List<dynamic> json) {
    return json == null ? List<TestLogReference>() : json.map((value) => TestLogReference.fromJson(value)).toList();
  }

  static Map<String, TestLogReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestLogReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestLogReference.fromJson(value));
    }
    return map;
  }
}

