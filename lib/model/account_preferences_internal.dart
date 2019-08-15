part of azure_devops_sdk.api;

class AccountPreferencesInternal {
  
  String culture = null;
  
  String language = null;
  
  String timeZone = null;
  AccountPreferencesInternal();

  @override
  String toString() {
    return 'AccountPreferencesInternal[culture=$culture, language=$language, timeZone=$timeZone, ]';
  }

  AccountPreferencesInternal.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['culture'] == null) {
      culture = null;
    } else {
          culture = json['culture'];
    }
    if (json['language'] == null) {
      language = null;
    } else {
          language = json['language'];
    }
    if (json['timeZone'] == null) {
      timeZone = null;
    } else {
          timeZone = json['timeZone'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (culture != null)
      json['culture'] = culture;
    if (language != null)
      json['language'] = language;
    if (timeZone != null)
      json['timeZone'] = timeZone;
    return json;
  }

  static List<AccountPreferencesInternal> listFromJson(List<dynamic> json) {
    return json == null ? List<AccountPreferencesInternal>() : json.map((value) => AccountPreferencesInternal.fromJson(value)).toList();
  }

  static Map<String, AccountPreferencesInternal> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccountPreferencesInternal>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccountPreferencesInternal.fromJson(value));
    }
    return map;
  }
}

