part of azure_devops_sdk.api;

class ExtensionSummaryData {
  /* Count of Licenses already assigned. */
  int assigned = null;
  /* Available Count. */
  int available = null;
  /* Quantity */
  int includedQuantity = null;
  /* Total Count. */
  int total = null;
  ExtensionSummaryData();

  @override
  String toString() {
    return 'ExtensionSummaryData[assigned=$assigned, available=$available, includedQuantity=$includedQuantity, total=$total, ]';
  }

  ExtensionSummaryData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['assigned'] == null) {
      assigned = null;
    } else {
          assigned = json['assigned'];
    }
    if (json['available'] == null) {
      available = null;
    } else {
          available = json['available'];
    }
    if (json['includedQuantity'] == null) {
      includedQuantity = null;
    } else {
          includedQuantity = json['includedQuantity'];
    }
    if (json['total'] == null) {
      total = null;
    } else {
          total = json['total'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (assigned != null)
      json['assigned'] = assigned;
    if (available != null)
      json['available'] = available;
    if (includedQuantity != null)
      json['includedQuantity'] = includedQuantity;
    if (total != null)
      json['total'] = total;
    return json;
  }

  static List<ExtensionSummaryData> listFromJson(List<dynamic> json) {
    return json == null ? List<ExtensionSummaryData>() : json.map((value) => ExtensionSummaryData.fromJson(value)).toList();
  }

  static Map<String, ExtensionSummaryData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExtensionSummaryData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExtensionSummaryData.fromJson(value));
    }
    return map;
  }
}

