part of azure_devops_sdk.api;

class AccountRecentMentionWorkItemModel {
  /* Assigned To */
  String assignedTo = null;
  /* Work Item Id */
  int id = null;
  /* Latest date that the user were mentioned */
  DateTime mentionedDateField = null;
  /* State of the work item */
  String state = null;
  /* Team project the work item belongs to */
  String teamProject = null;
  /* Title of the work item */
  String title = null;
  /* Type of Work Item */
  String workItemType = null;
  AccountRecentMentionWorkItemModel();

  @override
  String toString() {
    return 'AccountRecentMentionWorkItemModel[assignedTo=$assignedTo, id=$id, mentionedDateField=$mentionedDateField, state=$state, teamProject=$teamProject, title=$title, workItemType=$workItemType, ]';
  }

  AccountRecentMentionWorkItemModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assignedTo'] == null) {
      assignedTo = null;
    } else {
          assignedTo = json['assignedTo'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['mentionedDateField'] == null) {
      mentionedDateField = null;
    } else {
      mentionedDateField = DateTime.parse(json['mentionedDateField']);
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
    if (assignedTo != null)
      json['assignedTo'] = assignedTo;
    if (id != null)
      json['id'] = id;
    if (mentionedDateField != null)
      json['mentionedDateField'] = mentionedDateField == null ? null : mentionedDateField.toUtc().toIso8601String();
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

  static List<AccountRecentMentionWorkItemModel> listFromJson(List<dynamic> json) {
    return json == null ? List<AccountRecentMentionWorkItemModel>() : json.map((value) => AccountRecentMentionWorkItemModel.fromJson(value)).toList();
  }

  static Map<String, AccountRecentMentionWorkItemModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccountRecentMentionWorkItemModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccountRecentMentionWorkItemModel.fromJson(value));
    }
    return map;
  }
}

