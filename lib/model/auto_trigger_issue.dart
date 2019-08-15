part of azure_devops_sdk.api;

class AutoTriggerIssue {
  
  Issue issue = null;
  
  String issueSource = null;
  //enum issueSourceEnum {  none,  user,  system,  };{
  
  ProjectReference project = null;
  
  ReleaseDefinitionShallowReference releaseDefinitionReference = null;
  
  String releaseTriggerType = null;
  //enum releaseTriggerTypeEnum {  undefined,  artifactSource,  schedule,  sourceRepo,  containerImage,  package,  pullRequest,  };{
  AutoTriggerIssue();

  @override
  String toString() {
    return 'AutoTriggerIssue[issue=$issue, issueSource=$issueSource, project=$project, releaseDefinitionReference=$releaseDefinitionReference, releaseTriggerType=$releaseTriggerType, ]';
  }

  AutoTriggerIssue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['issue'] == null) {
      issue = null;
    } else {
      issue = Issue.fromJson(json['issue']);
    }
    if (json['issueSource'] == null) {
      issueSource = null;
    } else {
          issueSource = json['issueSource'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = ProjectReference.fromJson(json['project']);
    }
    if (json['releaseDefinitionReference'] == null) {
      releaseDefinitionReference = null;
    } else {
      releaseDefinitionReference = ReleaseDefinitionShallowReference.fromJson(json['releaseDefinitionReference']);
    }
    if (json['releaseTriggerType'] == null) {
      releaseTriggerType = null;
    } else {
          releaseTriggerType = json['releaseTriggerType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (issue != null)
      json['issue'] = issue;
    if (issueSource != null)
      json['issueSource'] = issueSource;
    if (project != null)
      json['project'] = project;
    if (releaseDefinitionReference != null)
      json['releaseDefinitionReference'] = releaseDefinitionReference;
    if (releaseTriggerType != null)
      json['releaseTriggerType'] = releaseTriggerType;
    return json;
  }

  static List<AutoTriggerIssue> listFromJson(List<dynamic> json) {
    return json == null ? List<AutoTriggerIssue>() : json.map((value) => AutoTriggerIssue.fromJson(value)).toList();
  }

  static Map<String, AutoTriggerIssue> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AutoTriggerIssue>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AutoTriggerIssue.fromJson(value));
    }
    return map;
  }
}

