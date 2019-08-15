part of azure_devops_sdk.api;

class AccountRecentActivityWorkItemModel {
  /* Date of the last Activity by the user */
  DateTime activityDate = null;
  /* Type of the activity */
  String activityType = null;
  //enum activityTypeEnum {  visited,  edited,  deleted,  restored,  };{
  /* Last changed date of the work item */
  DateTime changedDate = null;
  /* Work Item Id */
  int id = null;
  /* TeamFoundationId of the user this activity belongs to */
  String identityId = null;
  /* State of the work item */
  String state = null;
  /* Team project the work item belongs to */
  String teamProject = null;
  /* Title of the work item */
  String title = null;
  /* Type of Work Item */
  String workItemType = null;
  AccountRecentActivityWorkItemModel();

  @override
  String toString() {
    return 'AccountRecentActivityWorkItemModel[activityDate=$activityDate, activityType=$activityType, changedDate=$changedDate, id=$id, identityId=$identityId, state=$state, teamProject=$teamProject, title=$title, workItemType=$workItemType, ]';
  }

  AccountRecentActivityWorkItemModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['activityDate'] == null) {
      activityDate = null;
    } else {
      activityDate = DateTime.parse(json['activityDate']);
    }
    if (json['activityType'] == null) {
      activityType = null;
    } else {
          activityType = json['activityType'];
    }
    if (json['changedDate'] == null) {
      changedDate = null;
    } else {
      changedDate = DateTime.parse(json['changedDate']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['identityId'] == null) {
      identityId = null;
    } else {
          identityId = json['identityId'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['teamProject'] == null) {
      teamProject = null;
    } else {
          teamProject = json['teamProject'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['workItemType'] == null) {
      workItemType = null;
    } else {
          workItemType = json['workItemType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (activityDate != null)
      json['activityDate'] = activityDate == null ? null : activityDate.toUtc().toIso8601String();
    if (activityType != null)
      json['activityType'] = activityType;
    if (changedDate != null)
      json['changedDate'] = changedDate == null ? null : changedDate.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (identityId != null)
      json['identityId'] = identityId;
    if (state != null)
      json['state'] = state;
    if (teamProject != null)
      json['teamProject'] = teamProject;
    if (title != null)
      json['title'] = title;
    if (workItemType != null)
      json['workItemType'] = workItemType;
    return json;
  }

  static List<AccountRecentActivityWorkItemModel> listFromJson(List<dynamic> json) {
    return json == null ? List<AccountRecentActivityWorkItemModel>() : json.map((value) => AccountRecentActivityWorkItemModel.fromJson(value)).toList();
  }

  static Map<String, AccountRecentActivityWorkItemModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccountRecentActivityWorkItemModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccountRecentActivityWorkItemModel.fromJson(value));
    }
    return map;
  }
}

