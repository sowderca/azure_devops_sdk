part of azure_devops_sdk.api;

class GraphGlobalExtendedPropertyBatch {
  
  List<String> propertyNameFilters = [];
  
  List<String> subjectDescriptors = [];
  GraphGlobalExtendedPropertyBatch();

  @override
  String toString() {
    return 'GraphGlobalExtendedPropertyBatch[propertyNameFilters=$propertyNameFilters, subjectDescriptors=$subjectDescriptors, ]';
  }

  GraphGlobalExtendedPropertyBatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['propertyNameFilters'] == null) {
      propertyNameFilters = null;
    } else {
      propertyNameFilters = (json['propertyNameFilters'] as List).cast<String>();
    }
    if (json['subjectDescriptors'] == null) {
      subjectDescriptors = null;
    } else {
      subjectDescriptors = (json['subjectDescriptors'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (propertyNameFilters != null)
      json['propertyNameFilters'] = propertyNameFilters;
    if (subjectDescriptors != null)
      json['subjectDescriptors'] = subjectDescriptors;
    return json;
  }

  static List<GraphGlobalExtendedPropertyBatch> listFromJson(List<dynamic> json) {
    return json == null ? List<GraphGlobalExtendedPropertyBatch>() : json.map((value) => GraphGlobalExtendedPropertyBatch.fromJson(value)).toList();
  }

  static Map<String, GraphGlobalExtendedPropertyBatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GraphGlobalExtendedPropertyBatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GraphGlobalExtendedPropertyBatch.fromJson(value));
    }
    return map;
  }
}

