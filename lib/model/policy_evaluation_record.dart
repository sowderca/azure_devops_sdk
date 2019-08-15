part of azure_devops_sdk.api;

class PolicyEvaluationRecord {
  
  ReferenceLinks links = null;
  /* A string which uniquely identifies the target of a policy evaluation. */
  String artifactId = null;
  /* Time when this policy finished evaluating on this pull request. */
  DateTime completedDate = null;
  
  PolicyConfiguration configuration = null;
  
  JObject context = null;
  /* Guid which uniquely identifies this evaluation record (one policy running on one pull request). */
  String evaluationId = null;
  /* Time when this policy was first evaluated on this pull request. */
  DateTime startedDate = null;
  /* Status of the policy (Running, Approved, Failed, etc.) */
  String status = null;
  //enum statusEnum {  queued,  running,  approved,  rejected,  notApplicable,  broken,  };{
  PolicyEvaluationRecord();

  @override
  String toString() {
    return 'PolicyEvaluationRecord[links=$links, artifactId=$artifactId, completedDate=$completedDate, configuration=$configuration, context=$context, evaluationId=$evaluationId, startedDate=$startedDate, status=$status, ]';
  }

  PolicyEvaluationRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['artifactId'] == null) {
      artifactId = null;
    } else {
          artifactId = json['artifactId'];
    }
    if (json['completedDate'] == null) {
      completedDate = null;
    } else {
      completedDate = DateTime.parse(json['completedDate']);
    }
    if (json['configuration'] == null) {
      configuration = null;
    } else {
      configuration = PolicyConfiguration.fromJson(json['configuration']);
    }
    if (json['context'] == null) {
      context = null;
    } else {
      context = JObject.fromJson(json['context']);
    }
    if (json['evaluationId'] == null) {
      evaluationId = null;
    } else {
          evaluationId = json['evaluationId'];
    }
    if (json['startedDate'] == null) {
      startedDate = null;
    } else {
      startedDate = DateTime.parse(json['startedDate']);
    }
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (artifactId != null)
      json['artifactId'] = artifactId;
    if (completedDate != null)
      json['completedDate'] = completedDate == null ? null : completedDate.toUtc().toIso8601String();
    if (configuration != null)
      json['configuration'] = configuration;
    if (context != null)
      json['context'] = context;
    if (evaluationId != null)
      json['evaluationId'] = evaluationId;
    if (startedDate != null)
      json['startedDate'] = startedDate == null ? null : startedDate.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<PolicyEvaluationRecord> listFromJson(List<dynamic> json) {
    return json == null ? List<PolicyEvaluationRecord>() : json.map((value) => PolicyEvaluationRecord.fromJson(value)).toList();
  }

  static Map<String, PolicyEvaluationRecord> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PolicyEvaluationRecord>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PolicyEvaluationRecord.fromJson(value));
    }
    return map;
  }
}

