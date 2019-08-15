part of azure_devops_sdk.api;

class AccountWorkWorkItemModel {
  
  String assignedTo = null;
  
  DateTime changedDate = null;
  
  int id = null;
  
  String state = null;
  
  String teamProject = null;
  
  String title = null;
  
  String workItemType = null;
  AccountWorkWorkItemModel();

  @override
  String toString() {
    return 'AccountWorkWorkItemModel[assignedTo=$assignedTo, changedDate=$changedDate, id=$id, state=$state, teamProject=$teamProject, title=$title, workItemType=$workItemType, ]';
  }

  AccountWorkWorkItemModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assignedTo'] == null) {
      assignedTo = null;
    } else {
          assignedTo = json['assignedTo'];
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
    if (changedDate != null)
      json['changedDate'] = changedDate == null ? null : changedDate.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
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

  static List<AccountWorkWorkItemModel> listFromJson(List<dynamic> json) {
    return json == null ? List<AccountWorkWorkItemModel>() : json.map((value) => AccountWorkWorkItemModel.fromJson(value)).toList();
  }

  static Map<String, AccountWorkWorkItemModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccountWorkWorkItemModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccountWorkWorkItemModel.fromJson(value));
    }
    return map;
  }
}

