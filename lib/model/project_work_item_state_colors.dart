part of azure_devops_sdk.api;

class ProjectWorkItemStateColors {
  /* Project name */
  String projectName = null;
  /* State colors for all work item type in a project */
  List<WorkItemTypeStateColors> workItemTypeStateColors = [];
  ProjectWorkItemStateColors();

  @override
  String toString() {
    return 'ProjectWorkItemStateColors[projectName=$projectName, workItemTypeStateColors=$workItemTypeStateColors, ]';
  }

  ProjectWorkItemStateColors.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
    if (json['workItemTypeStateColors'] == null) {
      workItemTypeStateColors = null;
    } else {
      workItemTypeStateColors = WorkItemTypeStateColors.listFromJson(json['workItemTypeStateColors']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (projectName != null)
      json['projectName'] = projectName;
    if (workItemTypeStateColors != null)
      json['workItemTypeStateColors'] = workItemTypeStateColors;
    return json;
  }

  static List<ProjectWorkItemStateColors> listFromJson(List<dynamic> json) {
    return json == null ? List<ProjectWorkItemStateColors>() : json.map((value) => ProjectWorkItemStateColors.fromJson(value)).toList();
  }

  static Map<String, ProjectWorkItemStateColors> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProjectWorkItemStateColors>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProjectWorkItemStateColors.fromJson(value));
    }
    return map;
  }
}

