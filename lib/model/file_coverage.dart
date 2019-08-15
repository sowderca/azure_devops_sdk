part of azure_devops_sdk.api;

class FileCoverage {
  /* List of line blocks along with their coverage status */
  List<LineBlockCoverage> lineBlocksCoverage = [];
  /* File path for which coverage information is sought for */
  String path = null;
  FileCoverage();

  @override
  String toString() {
    return 'FileCoverage[lineBlocksCoverage=$lineBlocksCoverage, path=$path, ]';
  }

  FileCoverage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['lineBlocksCoverage'] == null) {
      lineBlocksCoverage = null;
    } else {
      lineBlocksCoverage = LineBlockCoverage.listFromJson(json['lineBlocksCoverage']);
    }
    if (json['path'] == null) {
      path = null;
    } else {
          path = json['path'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (lineBlocksCoverage != null)
      json['lineBlocksCoverage'] = lineBlocksCoverage;
    if (path != null)
      json['path'] = path;
    return json;
  }

  static List<FileCoverage> listFromJson(List<dynamic> json) {
    return json == null ? List<FileCoverage>() : json.map((value) => FileCoverage.fromJson(value)).toList();
  }

  static Map<String, FileCoverage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FileCoverage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FileCoverage.fromJson(value));
    }
    return map;
  }
}

