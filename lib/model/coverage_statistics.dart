part of azure_devops_sdk.api;

class CoverageStatistics {
  
  int blocksCovered = null;
  
  int blocksNotCovered = null;
  
  int linesCovered = null;
  
  int linesNotCovered = null;
  
  int linesPartiallyCovered = null;
  CoverageStatistics();

  @override
  String toString() {
    return 'CoverageStatistics[blocksCovered=$blocksCovered, blocksNotCovered=$blocksNotCovered, linesCovered=$linesCovered, linesNotCovered=$linesNotCovered, linesPartiallyCovered=$linesPartiallyCovered, ]';
  }

  CoverageStatistics.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['blocksCovered'] == null) {
      blocksCovered = null;
    } else {
          blocksCovered = json['blocksCovered'];
    }
    if (json['blocksNotCovered'] == null) {
      blocksNotCovered = null;
    } else {
          blocksNotCovered = json['blocksNotCovered'];
    }
    if (json['linesCovered'] == null) {
      linesCovered = null;
    } else {
          linesCovered = json['linesCovered'];
    }
    if (json['linesNotCovered'] == null) {
      linesNotCovered = null;
    } else {
          linesNotCovered = json['linesNotCovered'];
    }
    if (json['linesPartiallyCovered'] == null) {
      linesPartiallyCovered = null;
    } else {
          linesPartiallyCovered = json['linesPartiallyCovered'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (blocksCovered != null)
      json['blocksCovered'] = blocksCovered;
    if (blocksNotCovered != null)
      json['blocksNotCovered'] = blocksNotCovered;
    if (linesCovered != null)
      json['linesCovered'] = linesCovered;
    if (linesNotCovered != null)
      json['linesNotCovered'] = linesNotCovered;
    if (linesPartiallyCovered != null)
      json['linesPartiallyCovered'] = linesPartiallyCovered;
    return json;
  }

  static List<CoverageStatistics> listFromJson(List<dynamic> json) {
    return json == null ? List<CoverageStatistics>() : json.map((value) => CoverageStatistics.fromJson(value)).toList();
  }

  static Map<String, CoverageStatistics> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CoverageStatistics>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CoverageStatistics.fromJson(value));
    }
    return map;
  }
}

