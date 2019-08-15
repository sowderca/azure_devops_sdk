part of azure_devops_sdk.api;

class UpdateTestRunRequest {
  
  List<TestResultAttachment> attachmentsToAdd = [];
  
  List<TestResultAttachmentIdentity> attachmentsToDelete = [];
  
  String projectName = null;
  
  bool shouldHyderate = null;
  
  LegacyTestRun testRun = null;
  UpdateTestRunRequest();

  @override
  String toString() {
    return 'UpdateTestRunRequest[attachmentsToAdd=$attachmentsToAdd, attachmentsToDelete=$attachmentsToDelete, projectName=$projectName, shouldHyderate=$shouldHyderate, testRun=$testRun, ]';
  }

  UpdateTestRunRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['attachmentsToAdd'] == null) {
      attachmentsToAdd = null;
    } else {
      attachmentsToAdd = TestResultAttachment.listFromJson(json['attachmentsToAdd']);
    }
    if (json['attachmentsToDelete'] == null) {
      attachmentsToDelete = null;
    } else {
      attachmentsToDelete = TestResultAttachmentIdentity.listFromJson(json['attachmentsToDelete']);
    }
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['shouldHyderate'] == null) {
      shouldHyderate = null;
    } else {
          shouldHyderate = json['shouldHyderate'];
    }
    if (json['testRun'] == null) {
      testRun = null;
    } else {
      testRun = LegacyTestRun.fromJson(json['testRun']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attachmentsToAdd != null)
      json['attachmentsToAdd'] = attachmentsToAdd;
    if (attachmentsToDelete != null)
      json['attachmentsToDelete'] = attachmentsToDelete;
    if (projectName != null)
      json['projectName'] = projectName;
    if (shouldHyderate != null)
      json['shouldHyderate'] = shouldHyderate;
    if (testRun != null)
      json['testRun'] = testRun;
    return json;
  }

  static List<UpdateTestRunRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateTestRunRequest>() : json.map((value) => UpdateTestRunRequest.fromJson(value)).toList();
  }

  static Map<String, UpdateTestRunRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateTestRunRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateTestRunRequest.fromJson(value));
    }
    return map;
  }
}

