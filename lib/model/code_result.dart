part of azure_devops_sdk.api;

class CodeResult {
  
  Collection collection = null;
  /* ContentId of the result file. */
  String contentId = null;
  /* Name of the result file. */
  String fileName = null;
  /* Dictionary of field to hit offsets in the result file. Key identifies the area in which hits were found, for ex: file content/file name etc. */
  Map<String, List<Hit>> matches = {};
  /* Path at which result file is present. */
  String path = null;
  
  Project project = null;
  
  Repository repository = null;
  /* Versions of the result file. */
  List<Version> versions = [];
  CodeResult();

  @override
  String toString() {
    return 'CodeResult[collection=$collection, contentId=$contentId, fileName=$fileName, matches=$matches, path=$path, project=$project, repository=$repository, versions=$versions, ]';
  }

  CodeResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['collection'] == null) {
      collection = null;
    } else {
      collection = Collection.fromJson(json['collection']);
    }
    if (json['contentId'] == null) {
      contentId = null;
    } else {
          contentId = json['contentId'];
    }
    if (json['fileName'] == null) {
      fileName = null;
    } else {
          fileName = json['fileName'];
    }
    if (json['matches'] == null) {
      matches = null;
    } else {
      matches = List.mapFromJson(json['matches']);
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
    if (json['project'] == null) {
      project = null;
    } else {
      project = Project.fromJson(json['project']);
    }
    if (json['repository'] == null) {
      repository = null;
    } else {
      repository = Repository.fromJson(json['repository']);
    }
    if (json['versions'] == null) {
      versions = null;
    } else {
      versions = Version.listFromJson(json['versions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (collection != null)
      json['collection'] = collection;
    if (contentId != null)
      json['contentId'] = contentId;
    if (fileName != null)
      json['fileName'] = fileName;
    if (matches != null)
      json['matches'] = matches;
    if (path != null)
      json['path'] = path;
    if (project != null)
      json['project'] = project;
    if (repository != null)
      json['repository'] = repository;
    if (versions != null)
      json['versions'] = versions;
    return json;
  }

  static List<CodeResult> listFromJson(List<dynamic> json) {
    return json == null ? List<CodeResult>() : json.map((value) => CodeResult.fromJson(value)).toList();
  }

  static Map<String, CodeResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CodeResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CodeResult.fromJson(value));
    }
    return map;
  }
}

