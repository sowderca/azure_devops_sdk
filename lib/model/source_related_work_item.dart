part of azure_devops_sdk.api;

class SourceRelatedWorkItem {
  
  ReferenceLinks links = null;
  
  IdentityRef assignedTo = null;
  /* Current state of the work item, e.g. Active, Resolved, Closed, etc. */
  String currentState = null;
  /* Long description for the work item. */
  String description = null;
  /* Unique identifier for the work item */
  String id = null;
  /* The name of the provider the work item is associated with. */
  String providerName = null;
  /* Short name for the work item. */
  String title = null;
  /* Type of work item, e.g. Bug, Task, User Story, etc. */
  String type = null;
  SourceRelatedWorkItem();

  @override
  String toString() {
    return 'SourceRelatedWorkItem[links=$links, assignedTo=$assignedTo, currentState=$currentState, description=$description, id=$id, providerName=$providerName, title=$title, type=$type, ]';
  }

  SourceRelatedWorkItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['_links'] == null) {
      links = null;
    } else {
      links = ReferenceLinks.fromJson(json['_links']);
    }
    if (json['assignedTo'] == null) {
      assignedTo = null;
    } else {
      assignedTo = IdentityRef.fromJson(json['assignedTo']);
    }
    if (json['currentState'] == null) {
      currentState = null;
    } else {
          currentState = json['currentState'];
    }
    if (json['description'] == null) {
      description = null;
    } else {
          description = json['description'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['providerName'] == null) {
      providerName = null;
    } else {
          providerName = json['providerName'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (links != null)
      json['_links'] = links;
    if (assignedTo != null)
      json['assignedTo'] = assignedTo;
    if (currentState != null)
      json['currentState'] = currentState;
    if (description != null)
      json['description'] = description;
    if (id != null)
      json['id'] = id;
    if (providerName != null)
      json['providerName'] = providerName;
    if (title != null)
      json['title'] = title;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<SourceRelatedWorkItem> listFromJson(List<dynamic> json) {
    return json == null ? List<SourceRelatedWorkItem>() : json.map((value) => SourceRelatedWorkItem.fromJson(value)).toList();
  }

  static Map<String, SourceRelatedWorkItem> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SourceRelatedWorkItem>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SourceRelatedWorkItem.fromJson(value));
    }
    return map;
  }
}

