part of azure_devops_sdk.api;

class WorkItemTypeTemplateUpdateModel {
  /* Describes the type of the action for the update request. */
  String actionType = null;
  //enum actionTypeEnum {  import,  validate,  };{
  /* Methodology to which the template belongs, eg. Agile, Scrum, CMMI. */
  String methodology = null;
  /* String representation of the work item type template. */
  String template = null;
  /* The type of the template described in the request body. */
  String templateType = null;
  //enum templateTypeEnum {  workItemType,  globalWorkflow,  };{
  WorkItemTypeTemplateUpdateModel();

  @override
  String toString() {
    return 'WorkItemTypeTemplateUpdateModel[actionType=$actionType, methodology=$methodology, template=$template, templateType=$templateType, ]';
  }

  WorkItemTypeTemplateUpdateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['actionType'] == null) {
      actionType = null;
    } else {
          actionType = json['actionType'];
    }
    if (json['methodology'] == null) {
      methodology = null;
    } else {
          methodology = json['methodology'];
    }
    if (json['template'] == null) {
      template = null;
    } else {
          template = json['template'];
    }
    if (json['templateType'] == null) {
      templateType = null;
    } else {
          templateType = json['templateType'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (actionType != null)
      json['actionType'] = actionType;
    if (methodology != null)
      json['methodology'] = methodology;
    if (template != null)
      json['template'] = template;
    if (templateType != null)
      json['templateType'] = templateType;
    return json;
  }

  static List<WorkItemTypeTemplateUpdateModel> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemTypeTemplateUpdateModel>() : json.map((value) => WorkItemTypeTemplateUpdateModel.fromJson(value)).toList();
  }

  static Map<String, WorkItemTypeTemplateUpdateModel> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemTypeTemplateUpdateModel>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemTypeTemplateUpdateModel.fromJson(value));
    }
    return map;
  }
}

