part of azure_devops_sdk.api;

class ResultTransformationDetails {
  /* Gets or sets the template for callback parameters */
  String callbackContextTemplate = null;
  /* Gets or sets the template to decide whether to callback or not */
  String callbackRequiredTemplate = null;
  /* Gets or sets the template for result transformation. */
  String resultTemplate = null;
  ResultTransformationDetails();

  @override
  String toString() {
    return 'ResultTransformationDetails[callbackContextTemplate=$callbackContextTemplate, callbackRequiredTemplate=$callbackRequiredTemplate, resultTemplate=$resultTemplate, ]';
  }

  ResultTransformationDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['callbackContextTemplate'] == null) {
      callbackContextTemplate = null;
    } else {
          callbackContextTemplate = json['callbackContextTemplate'];
    }
    if (json['callbackRequiredTemplate'] == null) {
      callbackRequiredTemplate = null;
    } else {
          callbackRequiredTemplate = json['callbackRequiredTemplate'];
    }
    if (json['resultTemplate'] == null) {
      resultTemplate = null;
    } else {
          resultTemplate = json['resultTemplate'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (callbackContextTemplate != null)
      json['callbackContextTemplate'] = callbackContextTemplate;
    if (callbackRequiredTemplate != null)
      json['callbackRequiredTemplate'] = callbackRequiredTemplate;
    if (resultTemplate != null)
      json['resultTemplate'] = resultTemplate;
    return json;
  }

  static List<ResultTransformationDetails> listFromJson(List<dynamic> json) {
    return json == null ? List<ResultTransformationDetails>() : json.map((value) => ResultTransformationDetails.fromJson(value)).toList();
  }

  static Map<String, ResultTransformationDetails> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResultTransformationDetails>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResultTransformationDetails.fromJson(value));
    }
    return map;
  }
}

