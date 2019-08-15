part of azure_devops_sdk.api;

class GitAsyncRefOperationParameters {
  /* Proposed target branch name for the cherry pick or revert operation. */
  String generatedRefName = null;
  /* The target branch for the cherry pick or revert operation. */
  String ontoRefName = null;
  
  GitRepository repository = null;
  
  GitAsyncRefOperationSource source = null;
  GitAsyncRefOperationParameters();

  @override
  String toString() {
    return 'GitAsyncRefOperationParameters[generatedRefName=$generatedRefName, ontoRefName=$ontoRefName, repository=$repository, source=$source, ]';
  }

  GitAsyncRefOperationParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['generatedRefName'] == null) {
      generatedRefName = null;
    } else {
          generatedRefName = json['generatedRefName'];
    }
    if (json['ontoRefName'] == null) {
      ontoRefName = null;
    } else {
          ontoRefName = json['ontoRefName'];
    }
    if (json['repository'] == null) {
      repository = null;
    } else {
      repository = GitRepository.fromJson(json['repository']);
    }
    if (json['source'] == null) {
      source = null;
    } else {
      source = GitAsyncRefOperationSource.fromJson(json['source']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (generatedRefName != null)
      json['generatedRefName'] = generatedRefName;
    if (ontoRefName != null)
      json['ontoRefName'] = ontoRefName;
    if (repository != null)
      json['repository'] = repository;
    if (source != null)
      json['source'] = source;
    return json;
  }

  static List<GitAsyncRefOperationParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<GitAsyncRefOperationParameters>() : json.map((value) => GitAsyncRefOperationParameters.fromJson(value)).toList();
  }

  static Map<String, GitAsyncRefOperationParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitAsyncRefOperationParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitAsyncRefOperationParameters.fromJson(value));
    }
    return map;
  }
}

