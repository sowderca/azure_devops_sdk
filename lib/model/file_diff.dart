part of azure_devops_sdk.api;

class FileDiff {
  /* The collection of line diff blocks */
  List<LineDiffBlock> lineDiffBlocks = [];
  /* Original path of item if different from current path. */
  String originalPath = null;
  /* Current path of item */
  String path = null;
  FileDiff();

  @override
  String toString() {
    return 'FileDiff[lineDiffBlocks=$lineDiffBlocks, originalPath=$originalPath, path=$path, ]';
  }

  FileDiff.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['lineDiffBlocks'] == null) {
      lineDiffBlocks = null;
    } else {
      lineDiffBlocks = LineDiffBlock.listFromJson(json['lineDiffBlocks']);
    }
    if (json['originalPath'] == null) {
      originalPath = null;
    } else {
          originalPath = json['originalPath'];
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (lineDiffBlocks != null)
      json['lineDiffBlocks'] = lineDiffBlocks;
    if (originalPath != null)
      json['originalPath'] = originalPath;
    if (path != null)
      json['path'] = path;
    return json;
  }

  static List<FileDiff> listFromJson(List<dynamic> json) {
    return json == null ? List<FileDiff>() : json.map((value) => FileDiff.fromJson(value)).toList();
  }

  static Map<String, FileDiff> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FileDiff>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FileDiff.fromJson(value));
    }
    return map;
  }
}

