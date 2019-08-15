part of azure_devops_sdk.api;

class FileDiffsCriteria {
  /* Commit ID of the base version */
  String baseVersionCommit = null;
  /* List of parameters for each of the files for which we need to get the file diff */
  List<FileDiffParams> fileDiffParams = [];
  /* Commit ID of the target version */
  String targetVersionCommit = null;
  FileDiffsCriteria();

  @override
  String toString() {
    return 'FileDiffsCriteria[baseVersionCommit=$baseVersionCommit, fileDiffParams=$fileDiffParams, targetVersionCommit=$targetVersionCommit, ]';
  }

  FileDiffsCriteria.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['baseVersionCommit'] == null) {
      baseVersionCommit = null;
    } else {
          baseVersionCommit = json['baseVersionCommit'];
    }
    if (json['fileDiffParams'] == null) {
      fileDiffParams = null;
    } else {
      fileDiffParams = FileDiffParams.listFromJson(json['fileDiffParams']);
    }
    if (json['targetVersionCommit'] == null) {
      targetVersionCommit = null;
    } else {
          targetVersionCommit = json['targetVersionCommit'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (baseVersionCommit != null)
      json['baseVersionCommit'] = baseVersionCommit;
    if (fileDiffParams != null)
      json['fileDiffParams'] = fileDiffParams;
    if (targetVersionCommit != null)
      json['targetVersionCommit'] = targetVersionCommit;
    return json;
  }

  static List<FileDiffsCriteria> listFromJson(List<dynamic> json) {
    return json == null ? List<FileDiffsCriteria>() : json.map((value) => FileDiffsCriteria.fromJson(value)).toList();
  }

  static Map<String, FileDiffsCriteria> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FileDiffsCriteria>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FileDiffsCriteria.fromJson(value));
    }
    return map;
  }
}

