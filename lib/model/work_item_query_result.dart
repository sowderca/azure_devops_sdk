part of azure_devops_sdk.api;

class WorkItemQueryResult {
  /* The date the query was run in the context of. */
  DateTime asOf = null;
  /* The columns of the query. */
  List<WorkItemFieldReference> columns = [];
  /* The result type */
  String queryResultType = null;
  //enum queryResultTypeEnum {  workItem,  workItemLink,  };{
  /* The type of the query */
  String queryType = null;
  //enum queryTypeEnum {  flat,  tree,  oneHop,  };{
  /* The sort columns of the query. */
  List<WorkItemQuerySortColumn> sortColumns = [];
  /* The work item links returned by the query. */
  List<WorkItemLink> workItemRelations = [];
  /* The work items returned by the query. */
  List<WorkItemReference> workItems = [];
  WorkItemQueryResult();

  @override
  String toString() {
    return 'WorkItemQueryResult[asOf=$asOf, columns=$columns, queryResultType=$queryResultType, queryType=$queryType, sortColumns=$sortColumns, workItemRelations=$workItemRelations, workItems=$workItems, ]';
  }

  WorkItemQueryResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['asOf'] == null) {
      asOf = null;
    } else {
      asOf = DateTime.parse(json['asOf']);
    }
    if (json['columns'] == null) {
      columns = null;
    } else {
      columns = WorkItemFieldReference.listFromJson(json['columns']);
    }
    if (json['queryResultType'] == null) {
      queryResultType = null;
    } else {
          queryResultType = json['queryResultType'];
    }
    if (json['queryType'] == null) {
      queryType = null;
    } else {
          queryType = json['queryType'];
    }
    if (json['sortColumns'] == null) {
      sortColumns = null;
    } else {
      sortColumns = WorkItemQuerySortColumn.listFromJson(json['sortColumns']);
    }
    if (json['workItemRelations'] == null) {
      workItemRelations = null;
    } else {
      workItemRelations = WorkItemLink.listFromJson(json['workItemRelations']);
    }
    if (json['workItems'] == null) {
      workItems = null;
    } else {
      workItems = WorkItemReference.listFromJson(json['workItems']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (asOf != null)
      json['asOf'] = asOf == null ? null : asOf.toUtc().toIso8601String();
    if (columns != null)
      json['columns'] = columns;
    if (queryResultType != null)
      json['queryResultType'] = queryResultType;
    if (queryType != null)
      json['queryType'] = queryType;
    if (sortColumns != null)
      json['sortColumns'] = sortColumns;
    if (workItemRelations != null)
      json['workItemRelations'] = workItemRelations;
    if (workItems != null)
      json['workItems'] = workItems;
    return json;
  }

  static List<WorkItemQueryResult> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkItemQueryResult>() : json.map((value) => WorkItemQueryResult.fromJson(value)).toList();
  }

  static Map<String, WorkItemQueryResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkItemQueryResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkItemQueryResult.fromJson(value));
    }
    return map;
  }
}

