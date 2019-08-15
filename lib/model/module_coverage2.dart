part of azure_devops_sdk.api;

class ModuleCoverage2 {
  
  int blockCount = null;
  
  List<String> blockData = [];
  
  int blockDataLength = null;
  
  int blocksCovered = null;
  
  int blocksNotCovered = null;
  
  String coverageFileUrl = null;
  
  int coverageId = null;
  
  int linesCovered = null;
  
  int linesNotCovered = null;
  
  int linesPartiallyCovered = null;
  
  int moduleId = null;
  
  String name = null;
  
  String signature = null;
  
  int signatureAge = null;
  ModuleCoverage2();

  @override
  String toString() {
    return 'ModuleCoverage2[blockCount=$blockCount, blockData=$blockData, blockDataLength=$blockDataLength, blocksCovered=$blocksCovered, blocksNotCovered=$blocksNotCovered, coverageFileUrl=$coverageFileUrl, coverageId=$coverageId, linesCovered=$linesCovered, linesNotCovered=$linesNotCovered, linesPartiallyCovered=$linesPartiallyCovered, moduleId=$moduleId, name=$name, signature=$signature, signatureAge=$signatureAge, ]';
  }

  ModuleCoverage2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['blockCount'] == null) {
      blockCount = null;
    } else {
          blockCount = json['blockCount'];
    }
    if (json['blockData'] == null) {
      blockData = null;
    } else {
      blockData = (json['blockData'] as List).cast<String>();
    }
    if (json['blockDataLength'] == null) {
      blockDataLength = null;
    } else {
          blockDataLength = json['blockDataLength'];
    }
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
    if (json['coverageFileUrl'] == null) {
      coverageFileUrl = null;
    } else {
          coverageFileUrl = json['coverageFileUrl'];
    }
    if (json['coverageId'] == null) {
      coverageId = null;
    } else {
          coverageId = json['coverageId'];
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
    if (json['signature'] == null) {
      signature = null;
    } else {
          signature = json['signature'];
    }
    if (json['signatureAge'] == null) {
      signatureAge = null;
    } else {
          signatureAge = json['signatureAge'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (blockCount != null)
      json['blockCount'] = blockCount;
    if (blockData != null)
      json['blockData'] = blockData;
    if (blockDataLength != null)
      json['blockDataLength'] = blockDataLength;
    if (blocksCovered != null)
      json['blocksCovered'] = blocksCovered;
    if (blocksNotCovered != null)
      json['blocksNotCovered'] = blocksNotCovered;
    if (coverageFileUrl != null)
      json['coverageFileUrl'] = coverageFileUrl;
    if (coverageId != null)
      json['coverageId'] = coverageId;
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
    if (signature != null)
      json['signature'] = signature;
    if (signatureAge != null)
      json['signatureAge'] = signatureAge;
    return json;
  }

  static List<ModuleCoverage2> listFromJson(List<dynamic> json) {
    return json == null ? List<ModuleCoverage2>() : json.map((value) => ModuleCoverage2.fromJson(value)).toList();
  }

  static Map<String, ModuleCoverage2> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ModuleCoverage2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ModuleCoverage2.fromJson(value));
    }
    return map;
  }
}

