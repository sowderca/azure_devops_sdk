part of azure_devops_sdk.api;

class CltCustomerIntelligenceData {
  
  String area = null;
  
  String feature = null;
  
  Map<String, Object> properties = {};
  CltCustomerIntelligenceData();

  @override
  String toString() {
    return 'CltCustomerIntelligenceData[area=$area, feature=$feature, properties=$properties, ]';
  }

  CltCustomerIntelligenceData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['area'] == null) {
      area = null;
    } else {
          area = json['area'];
    }
    if (json['feature'] == null) {
      feature = null;
    } else {
          feature = json['feature'];
    }
    if (json['properties'] == null) {
      properties = null;
    } else {
      properties = Object.mapFromJson(json['properties']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (area != null)
      json['area'] = area;
    if (feature != null)
      json['feature'] = feature;
    if (properties != null)
      json['properties'] = properties;
    return json;
  }

  static List<CltCustomerIntelligenceData> listFromJson(List<dynamic> json) {
    return json == null ? List<CltCustomerIntelligenceData>() : json.map((value) => CltCustomerIntelligenceData.fromJson(value)).toList();
  }

  static Map<String, CltCustomerIntelligenceData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CltCustomerIntelligenceData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CltCustomerIntelligenceData.fromJson(value));
    }
    return map;
  }
}

