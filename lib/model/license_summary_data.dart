part of azure_devops_sdk.api;

class LicenseSummaryData {
  /* Count of Licenses already assigned. */
  int assigned = null;
  /* Available Count. */
  int available = null;
  /* Quantity */
  int includedQuantity = null;
  /* Total Count. */
  int total = null;
  LicenseSummaryData();

  @override
  String toString() {
    return 'LicenseSummaryData[assigned=$assigned, available=$available, includedQuantity=$includedQuantity, total=$total, ]';
  }

  LicenseSummaryData.fromJson(Map<String, dynamic> json) {
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

  static List<LicenseSummaryData> listFromJson(List<dynamic> json) {
    return json == null ? List<LicenseSummaryData>() : json.map((value) => LicenseSummaryData.fromJson(value)).toList();
  }

  static Map<String, LicenseSummaryData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LicenseSummaryData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LicenseSummaryData.fromJson(value));
    }
    return map;
  }
}

