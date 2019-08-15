part of azure_devops_sdk.api;

class CloneOptions {
  /* If set to true requirements will be cloned */
  bool cloneRequirements = null;
  /* copy all suites from a source plan */
  bool copyAllSuites = null;
  /* copy ancestor hierarchy */
  bool copyAncestorHierarchy = null;
  /* Name of the workitem type of the clone */
  String destinationWorkItemType = null;
  /* Key value pairs where the key value is overridden by the value. */
  Map<String, String> overrideParameters = {};
  /* Comment on the link that will link the new clone  test case to the original Set null for no comment */
  String relatedLinkComment = null;
  CloneOptions();

  @override
  String toString() {
    return 'CloneOptions[cloneRequirements=$cloneRequirements, copyAllSuites=$copyAllSuites, copyAncestorHierarchy=$copyAncestorHierarchy, destinationWorkItemType=$destinationWorkItemType, overrideParameters=$overrideParameters, relatedLinkComment=$relatedLinkComment, ]';
  }

  CloneOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['cloneRequirements'] == null) {
      cloneRequirements = null;
    } else {
          cloneRequirements = json['cloneRequirements'];
    }
    if (json['copyAllSuites'] == null) {
      copyAllSuites = null;
    } else {
          copyAllSuites = json['copyAllSuites'];
    }
    if (json['copyAncestorHierarchy'] == null) {
      copyAncestorHierarchy = null;
    } else {
          copyAncestorHierarchy = json['copyAncestorHierarchy'];
    }
    if (json['destinationWorkItemType'] == null) {
      destinationWorkItemType = null;
    } else {
          destinationWorkItemType = json['destinationWorkItemType'];
    }
    if (json['overrideParameters'] == null) {
      overrideParameters = null;
    } else {
          overrideParameters = (json['overrideParameters'] as Map).cast<String, String>();
    }
    if (json['relatedLinkComment'] == null) {
      relatedLinkComment = null;
    } else {
          relatedLinkComment = json['relatedLinkComment'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (cloneRequirements != null)
      json['cloneRequirements'] = cloneRequirements;
    if (copyAllSuites != null)
      json['copyAllSuites'] = copyAllSuites;
    if (copyAncestorHierarchy != null)
      json['copyAncestorHierarchy'] = copyAncestorHierarchy;
    if (destinationWorkItemType != null)
      json['destinationWorkItemType'] = destinationWorkItemType;
    if (overrideParameters != null)
      json['overrideParameters'] = overrideParameters;
    if (relatedLinkComment != null)
      json['relatedLinkComment'] = relatedLinkComment;
    return json;
  }

  static List<CloneOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<CloneOptions>() : json.map((value) => CloneOptions.fromJson(value)).toList();
  }

  static Map<String, CloneOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CloneOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CloneOptions.fromJson(value));
    }
    return map;
  }
}

