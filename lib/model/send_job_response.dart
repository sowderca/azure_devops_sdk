part of azure_devops_sdk.api;

class SendJobResponse {
  
  JobEventsConfig events = null;
  
  Map<String, String> variables = {};
  SendJobResponse();

  @override
  String toString() {
    return 'SendJobResponse[events=$events, variables=$variables, ]';
  }

  SendJobResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['events'] == null) {
      events = null;
    } else {
      events = JobEventsConfig.fromJson(json['events']);
    }
    if (json['variables'] == null) {
      variables = null;
    } else {
          variables = (json['variables'] as Map).cast<String, String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (events != null)
      json['events'] = events;
    if (variables != null)
      json['variables'] = variables;
    return json;
  }

  static List<SendJobResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<SendJobResponse>() : json.map((value) => SendJobResponse.fromJson(value)).toList();
  }

  static Map<String, SendJobResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SendJobResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SendJobResponse.fromJson(value));
    }
    return map;
  }
}

