part of azure_devops_sdk.api;

class WorkItemQuerySortColumn {
  /* The direction to sort by. */
  bool descending = null;
  
  WorkItemFieldReference field = null;
  WorkItemQuerySortColumn();

  @override
  String toString() {
    return 'WorkItemQuerySortColumn[descending=$descending, field=$field, ]';
  }

  WorkItemQuerySortColumn.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['descending'] == null) {
      descending = null;
    } else {
          descending = json['descending'];
    }
    if (json['field'] == null) {
      field = null;
    } else {
      field = WorkItemFieldReference.fromJson(json['field']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (descending != null)
      json['descending'] = descending;
    if (field != null)
      json['field'] = field;
    return json;
  }

  static List<WorkItemQuerySortColumn> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemQuerySortColumn>() : json.map((value) => WorkItemQuerySortColumn.fromJson(value)).toList();
  }

  static Map<String, WorkItemQuerySortColumn> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemQuerySortColumn>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemQuerySortColumn.fromJson(value));
    }
    return map;
  }
}

