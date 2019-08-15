part of azure_devops_sdk.api;

class UpdateSubscripitonDiagnosticsParameters {
  
  UpdateSubscripitonTracingParameters deliveryResults = null;
  
  UpdateSubscripitonTracingParameters deliveryTracing = null;
  
  UpdateSubscripitonTracingParameters evaluationTracing = null;
  UpdateSubscripitonDiagnosticsParameters();

  @override
  String toString() {
    return 'UpdateSubscripitonDiagnosticsParameters[deliveryResults=$deliveryResults, deliveryTracing=$deliveryTracing, evaluationTracing=$evaluationTracing, ]';
  }

  UpdateSubscripitonDiagnosticsParameters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deliveryResults'] == null) {
      deliveryResults = null;
    } else {
      deliveryResults = UpdateSubscripitonTracingParameters.fromJson(json['deliveryResults']);
    }
    if (json['deliveryTracing'] == null) {
      deliveryTracing = null;
    } else {
      deliveryTracing = UpdateSubscripitonTracingParameters.fromJson(json['deliveryTracing']);
    }
    if (json['evaluationTracing'] == null) {
      evaluationTracing = null;
    } else {
      evaluationTracing = UpdateSubscripitonTracingParameters.fromJson(json['evaluationTracing']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deliveryResults != null)
      json['deliveryResults'] = deliveryResults;
    if (deliveryTracing != null)
      json['deliveryTracing'] = deliveryTracing;
    if (evaluationTracing != null)
      json['evaluationTracing'] = evaluationTracing;
    return json;
  }

  static List<UpdateSubscripitonDiagnosticsParameters> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateSubscripitonDiagnosticsParameters>() : json.map((value) => UpdateSubscripitonDiagnosticsParameters.fromJson(value)).toList();
  }

  static Map<String, UpdateSubscripitonDiagnosticsParameters> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateSubscripitonDiagnosticsParameters>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateSubscripitonDiagnosticsParameters.fromJson(value));
    }
    return map;
  }
}

