part of azure_devops_sdk.api;

class FunctionCoverage2 {
  
  int blocksCovered = null;
  
  int blocksNotCovered = null;
  
  String class_ = null;
  
  int coverageId = null;
  
  int functionId = null;
  
  int linesCovered = null;
  
  int linesNotCovered = null;
  
  int linesPartiallyCovered = null;
  
  int moduleId = null;
  
  String name = null;
  
  String namespace = null;
  
  String sourceFile = null;
  FunctionCoverage2();

  @override
  String toString() {
    return 'FunctionCoverage2[blocksCovered=$blocksCovered, blocksNotCovered=$blocksNotCovered, class_=$class_, coverageId=$coverageId, functionId=$functionId, linesCovered=$linesCovered, linesNotCovered=$linesNotCovered, linesPartiallyCovered=$linesPartiallyCovered, moduleId=$moduleId, name=$name, namespace=$namespace, sourceFile=$sourceFile, ]';
  }

  FunctionCoverage2.fromJson(Map<String, dynamic> json) {
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
    if (json['class'] == null) {
      class_ = null;
    } else {
          class_ = json['class'];
    }
    if (json['coverageId'] == null) {
      coverageId = null;
    } else {
          coverageId = json['coverageId'];
    }
    if (json['functionId'] == null) {
      functionId = null;
    } else {
          functionId = json['functionId'];
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
    if (json['moduleId'] == null) {
      moduleId = null;
    } else {
          moduleId = json['moduleId'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['namespace'] == null) {
      namespace = null;
    } else {
          namespace = json['namespace'];
    }
    if (json['sourceFile'] == null) {
      sourceFile = null;
    } else {
          sourceFile = json['sourceFile'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (blocksCovered != null)
      json['blocksCovered'] = blocksCovered;
    if (blocksNotCovered != null)
      json['blocksNotCovered'] = blocksNotCovered;
    if (class_ != null)
      json['class'] = class_;
    if (coverageId != null)
      json['coverageId'] = coverageId;
    if (functionId != null)
      json['functionId'] = functionId;
    if (linesCovered != null)
      json['linesCovered'] = linesCovered;
    if (linesNotCovered != null)
      json['linesNotCovered'] = linesNotCovered;
    if (linesPartiallyCovered != null)
      json['linesPartiallyCovered'] = linesPartiallyCovered;
    if (moduleId != null)
      json['moduleId'] = moduleId;
    if (name != null)
      json['name'] = name;
    if (namespace != null)
      json['namespace'] = namespace;
    if (sourceFile != null)
      json['sourceFile'] = sourceFile;
    return json;
  }

  static List<FunctionCoverage2> listFromJson(List<dynamic> json) {
    return json == null ? List<FunctionCoverage2>() : json.map((value) => FunctionCoverage2.fromJson(value)).toList();
  }

  static Map<String, FunctionCoverage2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FunctionCoverage2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FunctionCoverage2.fromJson(value));
    }
    return map;
  }
}

