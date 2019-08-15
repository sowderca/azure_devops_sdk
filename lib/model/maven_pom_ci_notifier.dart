part of azure_devops_sdk.api;

class MavenPomCiNotifier {
  
  List<String> configuration = [];
  
  String sendOnError = null;
  
  String sendOnFailure = null;
  
  String sendOnSuccess = null;
  
  String sendOnWarning = null;
  
  String type = null;
  MavenPomCiNotifier();

  @override
  String toString() {
    return 'MavenPomCiNotifier[configuration=$configuration, sendOnError=$sendOnError, sendOnFailure=$sendOnFailure, sendOnSuccess=$sendOnSuccess, sendOnWarning=$sendOnWarning, type=$type, ]';
  }

  MavenPomCiNotifier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['configuration'] == null) {
      configuration = null;
    } else {
      configuration = (json['configuration'] as List).cast<String>();
    }
    if (json['sendOnError'] == null) {
      sendOnError = null;
    } else {
          sendOnError = json['sendOnError'];
    }
    if (json['sendOnFailure'] == null) {
      sendOnFailure = null;
    } else {
          sendOnFailure = json['sendOnFailure'];
    }
    if (json['sendOnSuccess'] == null) {
      sendOnSuccess = null;
    } else {
          sendOnSuccess = json['sendOnSuccess'];
    }
    if (json['sendOnWarning'] == null) {
      sendOnWarning = null;
    } else {
          sendOnWarning = json['sendOnWarning'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (configuration != null)
      json['configuration'] = configuration;
    if (sendOnError != null)
      json['sendOnError'] = sendOnError;
    if (sendOnFailure != null)
      json['sendOnFailure'] = sendOnFailure;
    if (sendOnSuccess != null)
      json['sendOnSuccess'] = sendOnSuccess;
    if (sendOnWarning != null)
      json['sendOnWarning'] = sendOnWarning;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<MavenPomCiNotifier> listFromJson(List<dynamic> json) {
    return json == null ? List<MavenPomCiNotifier>() : json.map((value) => MavenPomCiNotifier.fromJson(value)).toList();
  }

  static Map<String, MavenPomCiNotifier> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MavenPomCiNotifier>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MavenPomCiNotifier.fromJson(value));
    }
    return map;
  }
}

