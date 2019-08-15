part of azure_devops_sdk.api;

class FileCoverageRequest {
  
  String filePath = null;
  
  int pullRequestBaseIterationId = null;
  
  int pullRequestId = null;
  
  int pullRequestIterationId = null;
  
  String repoId = null;
  FileCoverageRequest();

  @override
  String toString() {
    return 'FileCoverageRequest[filePath=$filePath, pullRequestBaseIterationId=$pullRequestBaseIterationId, pullRequestId=$pullRequestId, pullRequestIterationId=$pullRequestIterationId, repoId=$repoId, ]';
  }

  FileCoverageRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['filePath'] == null) {
      filePath = null;
    } else {
          filePath = json['filePath'];
    }
    if (json['pullRequestBaseIterationId'] == null) {
      pullRequestBaseIterationId = null;
    } else {
          pullRequestBaseIterationId = json['pullRequestBaseIterationId'];
    }
    if (json['pullRequestId'] == null) {
      pullRequestId = null;
    } else {
          pullRequestId = json['pullRequestId'];
    }
    if (json['pullRequestIterationId'] == null) {
      pullRequestIterationId = null;
    } else {
          pullRequestIterationId = json['pullRequestIterationId'];
    }
    if (json['repoId'] == null) {
      repoId = null;
    } else {
          repoId = json['repoId'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (filePath != null)
      json['filePath'] = filePath;
    if (pullRequestBaseIterationId != null)
      json['pullRequestBaseIterationId'] = pullRequestBaseIterationId;
    if (pullRequestId != null)
      json['pullRequestId'] = pullRequestId;
    if (pullRequestIterationId != null)
      json['pullRequestIterationId'] = pullRequestIterationId;
    if (repoId != null)
      json['repoId'] = repoId;
    return json;
  }

  static List<FileCoverageRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<FileCoverageRequest>() : json.map((value) => FileCoverageRequest.fromJson(value)).toList();
  }

  static Map<String, FileCoverageRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FileCoverageRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FileCoverageRequest.fromJson(value));
    }
    return map;
  }
}

