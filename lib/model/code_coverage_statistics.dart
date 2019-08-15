part of azure_devops_sdk.api;

class CodeCoverageStatistics {
  /* Covered units */
  int covered = null;
  /* Delta of coverage */
  double delta = null;
  /* Is delta valid */
  bool isDeltaAvailable = null;
  /* Label of coverage data (\"Blocks\", \"Statements\", \"Modules\", etc.) */
  String label = null;
  /* Position of label */
  int position = null;
  /* Total units */
  int total = null;
  CodeCoverageStatistics();

  @override
  String toString() {
    return 'CodeCoverageStatistics[covered=$covered, delta=$delta, isDeltaAvailable=$isDeltaAvailable, label=$label, position=$position, total=$total, ]';
  }

  CodeCoverageStatistics.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['covered'] == null) {
      covered = null;
    } else {
          covered = json['covered'];
    }
    if (json['delta'] == null) {
      delta = null;
    } else {
          delta = json['delta'].toDouble();
    }
    if (json['isDeltaAvailable'] == null) {
      isDeltaAvailable = null;
    } else {
          isDeltaAvailable = json['isDeltaAvailable'];
    }
    if (json['label'] == null) {
      label = null;
    } else {
          label = json['label'];
    }
    if (json['position'] == null) {
      position = null;
    } else {
          position = json['position'];
    }
    if (json['total'] == null) {
      total = null;
    } else {
          total = json['total'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (covered != null)
      json['covered'] = covered;
    if (delta != null)
      json['delta'] = delta;
    if (isDeltaAvailable != null)
      json['isDeltaAvailable'] = isDeltaAvailable;
    if (label != null)
      json['label'] = label;
    if (position != null)
      json['position'] = position;
    if (total != null)
      json['total'] = total;
    return json;
  }

  static List<CodeCoverageStatistics> listFromJson(List<dynamic> json) {
    return json == null ? List<CodeCoverageStatistics>() : json.map((value) => CodeCoverageStatistics.fromJson(value)).toList();
  }

  static Map<String, CodeCoverageStatistics> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CodeCoverageStatistics>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CodeCoverageStatistics.fromJson(value));
    }
    return map;
  }
}

