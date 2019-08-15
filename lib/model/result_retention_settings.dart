part of azure_devops_sdk.api;

class ResultRetentionSettings {
  /* Automated test result retention duration in days */
  int automatedResultsRetentionDuration = null;
  
  IdentityRef lastUpdatedBy = null;
  /* Last updated date */
  DateTime lastUpdatedDate = null;
  /* Manual test result retention duration in days */
  int manualResultsRetentionDuration = null;
  ResultRetentionSettings();

  @override
  String toString() {
    return 'ResultRetentionSettings[automatedResultsRetentionDuration=$automatedResultsRetentionDuration, lastUpdatedBy=$lastUpdatedBy, lastUpdatedDate=$lastUpdatedDate, manualResultsRetentionDuration=$manualResultsRetentionDuration, ]';
  }

  ResultRetentionSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['automatedResultsRetentionDuration'] == null) {
      automatedResultsRetentionDuration = null;
    } else {
          automatedResultsRetentionDuration = json['automatedResultsRetentionDuration'];
    }
    if (json['lastUpdatedBy'] == null) {
      lastUpdatedBy = null;
    } else {
      lastUpdatedBy = IdentityRef.fromJson(json['lastUpdatedBy']);
    }
    if (json['lastUpdatedDate'] == null) {
      lastUpdatedDate = null;
    } else {
      lastUpdatedDate = DateTime.parse(json['lastUpdatedDate']);
    }
    if (json['manualResultsRetentionDuration'] == null) {
      manualResultsRetentionDuration = null;
    } else {
          manualResultsRetentionDuration = json['manualResultsRetentionDuration'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (automatedResultsRetentionDuration != null)
      json['automatedResultsRetentionDuration'] = automatedResultsRetentionDuration;
    if (lastUpdatedBy != null)
      json['lastUpdatedBy'] = lastUpdatedBy;
    if (lastUpdatedDate != null)
      json['lastUpdatedDate'] = lastUpdatedDate == null ? null : lastUpdatedDate.toUtc().toIso8601String();
    if (manualResultsRetentionDuration != null)
      json['manualResultsRetentionDuration'] = manualResultsRetentionDuration;
    return json;
  }

  static List<ResultRetentionSettings> listFromJson(List<dynamic> json) {
    return json == null ? List<ResultRetentionSettings>() : json.map((value) => ResultRetentionSettings.fromJson(value)).toList();
  }

  static Map<String, ResultRetentionSettings> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResultRetentionSettings>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResultRetentionSettings.fromJson(value));
    }
    return map;
  }
}

