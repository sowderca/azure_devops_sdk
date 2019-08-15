part of azure_devops_sdk.api;

class FetchTestResultsRequest {
  
  List<TestCaseResultIdAndRev> idAndRevs = [];
  
  bool includeActionResults = null;
  
  String projectName = null;
  FetchTestResultsRequest();

  @override
  String toString() {
    return 'FetchTestResultsRequest[idAndRevs=$idAndRevs, includeActionResults=$includeActionResults, projectName=$projectName, ]';
  }

  FetchTestResultsRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['idAndRevs'] == null) {
      idAndRevs = null;
    } else {
      idAndRevs = TestCaseResultIdAndRev.listFromJson(json['idAndRevs']);
    }
    if (json['includeActionResults'] == null) {
      includeActionResults = null;
    } else {
          includeActionResults = json['includeActionResults'];
    }
    if (json['projectName'] == null) {
      projectName = null;
    } else {
          projectName = json['projectName'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (idAndRevs != null)
      json['idAndRevs'] = idAndRevs;
    if (includeActionResults != null)
      json['includeActionResults'] = includeActionResults;
    if (projectName != null)
      json['projectName'] = projectName;
    return json;
  }

  static List<FetchTestResultsRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<FetchTestResultsRequest>() : json.map((value) => FetchTestResultsRequest.fromJson(value)).toList();
  }

  static Map<String, FetchTestResultsRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FetchTestResultsRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FetchTestResultsRequest.fromJson(value));
    }
    return map;
  }
}

