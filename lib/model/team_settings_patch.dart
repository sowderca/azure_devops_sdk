part of azure_devops_sdk.api;

class TeamSettingsPatch {
  
  String backlogIteration = null;
  
  Map<String, bool> backlogVisibilities = {};
  
  String bugsBehavior = null;
  //enum bugsBehaviorEnum {  off,  asRequirements,  asTasks,  };{
  
  String defaultIteration = null;
  
  String defaultIterationMacro = null;
  
  List<Object> workingDays = [];
  TeamSettingsPatch();

  @override
  String toString() {
    return 'TeamSettingsPatch[backlogIteration=$backlogIteration, backlogVisibilities=$backlogVisibilities, bugsBehavior=$bugsBehavior, defaultIteration=$defaultIteration, defaultIterationMacro=$defaultIterationMacro, workingDays=$workingDays, ]';
  }

  TeamSettingsPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['backlogIteration'] == null) {
      backlogIteration = null;
    } else {
          backlogIteration = json['backlogIteration'];
    }
    if (json['backlogVisibilities'] == null) {
      backlogVisibilities = null;
    } else {
          backlogVisibilities = (json['backlogVisibilities'] as Map).cast<String, bool>();
    }
    if (json['bugsBehavior'] == null) {
      bugsBehavior = null;
    } else {
          bugsBehavior = json['bugsBehavior'];
    }
    if (json['defaultIteration'] == null) {
      defaultIteration = null;
    } else {
          defaultIteration = json['defaultIteration'];
    }
    if (json['defaultIterationMacro'] == null) {
      defaultIterationMacro = null;
    } else {
          defaultIterationMacro = json['defaultIterationMacro'];
    }
    if (json['workingDays'] == null) {
      workingDays = null;
    } else {
      workingDays = Object.listFromJson(json['workingDays']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (backlogIteration != null)
      json['backlogIteration'] = backlogIteration;
    if (backlogVisibilities != null)
      json['backlogVisibilities'] = backlogVisibilities;
    if (bugsBehavior != null)
      json['bugsBehavior'] = bugsBehavior;
    if (defaultIteration != null)
      json['defaultIteration'] = defaultIteration;
    if (defaultIterationMacro != null)
      json['defaultIterationMacro'] = defaultIterationMacro;
    if (workingDays != null)
      json['workingDays'] = workingDays;
    return json;
  }

  static List<TeamSettingsPatch> listFromJson(List<dynamic> json) {
    return json == null ? List<TeamSettingsPatch>() : json.map((value) => TeamSettingsPatch.fromJson(value)).toList();
  }

  static Map<String, TeamSettingsPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TeamSettingsPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TeamSettingsPatch.fromJson(value));
    }
    return map;
  }
}

