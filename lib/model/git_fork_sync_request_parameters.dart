part of azure_devops_sdk.api;

class GitForkSyncRequestParameters {
  
  GlobalGitRepositoryKey source = null;
  /* If supplied, the set of ref mappings to use when performing a \"sync\" or create. If missing, all refs will be synchronized. */
  List<SourceToTargetRef> sourceToTargetRefs = [];
  GitForkSyncRequestParameters();

  @override
  String toString() {
    return 'GitForkSyncRequestParameters[source=$source, sourceToTargetRefs=$sourceToTargetRefs, ]';
  }

  GitForkSyncRequestParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['source'] == null) {
      source = null;
    } else {
      source = GlobalGitRepositoryKey.fromJson(json['source']);
    }
    if (json['sourceToTargetRefs'] == null) {
      sourceToTargetRefs = null;
    } else {
      sourceToTargetRefs = SourceToTargetRef.listFromJson(json['sourceToTargetRefs']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (source != null)
      json['source'] = source;
    if (sourceToTargetRefs != null)
      json['sourceToTargetRefs'] = sourceToTargetRefs;
    return json;
  }

  static List<GitForkSyncRequestParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<GitForkSyncRequestParameters>() : json.map((value) => GitForkSyncRequestParameters.fromJson(value)).toList();
  }

  static Map<String, GitForkSyncRequestParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitForkSyncRequestParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitForkSyncRequestParameters.fromJson(value));
    }
    return map;
  }
}

