part of azure_devops_sdk.api;

class BrowserMix {
  
  String browserName = null;
  
  String browserPercentage = null;
  BrowserMix();

  @override
  String toString() {
    return 'BrowserMix[browserName=$browserName, browserPercentage=$browserPercentage, ]';
  }

  BrowserMix.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['browserName'] == null) {
      browserName = null;
    } else {
          browserName = json['browserName'];
    }
    if (json['browserPercentage'] == null) {
      browserPercentage = null;
    } else {
          browserPercentage = json['browserPercentage'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (browserName != null)
      json['browserName'] = browserName;
    if (browserPercentage != null)
      json['browserPercentage'] = browserPercentage;
    return json;
  }

  static List<BrowserMix> listFromJson(List<dynamic> json) {
    return json == null ? List<BrowserMix>() : json.map((value) => BrowserMix.fromJson(value)).toList();
  }

  static Map<String, BrowserMix> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BrowserMix>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BrowserMix.fromJson(value));
    }
    return map;
  }
}

