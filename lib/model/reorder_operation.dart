part of azure_devops_sdk.api;

class ReorderOperation {
  /* IDs of the work items to be reordered.  Must be valid WorkItem Ids. */
  List<int> ids = [];
  /* IterationPath for reorder operation. This is only used when we reorder from the Iteration Backlog */
  String iterationPath = null;
  /* ID of the work item that should be after the reordered items. Can use 0 to specify the end of the list. */
  int nextId = null;
  /* Parent ID for all of the work items involved in this operation. Can use 0 to indicate the items don't have a parent. */
  int parentId = null;
  /* ID of the work item that should be before the reordered items. Can use 0 to specify the beginning of the list. */
  int previousId = null;
  ReorderOperation();

  @override
  String toString() {
    return 'ReorderOperation[ids=$ids, iterationPath=$iterationPath, nextId=$nextId, parentId=$parentId, previousId=$previousId, ]';
  }

  ReorderOperation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['ids'] == null) {
      ids = null;
    } else {
      ids = (json['ids'] as List).cast<int>();
    }
    if (json['iterationPath'] == null) {
      iterationPath = null;
    } else {
          iterationPath = json['iterationPath'];
    }
    if (json['nextId'] == null) {
      nextId = null;
    } else {
          nextId = json['nextId'];
    }
    if (json['parentId'] == null) {
      parentId = null;
    } else {
          parentId = json['parentId'];
    }
    if (json['previousId'] == null) {
      previousId = null;
    } else {
          previousId = json['previousId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (ids != null)
      json['ids'] = ids;
    if (iterationPath != null)
      json['iterationPath'] = iterationPath;
    if (nextId != null)
      json['nextId'] = nextId;
    if (parentId != null)
      json['parentId'] = parentId;
    if (previousId != null)
      json['previousId'] = previousId;
    return json;
  }

  static List<ReorderOperation> listFromJson(List<dynamic> json) {
    return json == null ? List<ReorderOperation>() : json.map((value) => ReorderOperation.fromJson(value)).toList();
  }

  static Map<String, ReorderOperation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReorderOperation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReorderOperation.fromJson(value));
    }
    return map;
  }
}

