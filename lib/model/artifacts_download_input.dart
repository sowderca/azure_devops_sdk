part of azure_devops_sdk.api;

class ArtifactsDownloadInput {
  
  List<ArtifactDownloadInputBase> downloadInputs = [];
  ArtifactsDownloadInput();

  @override
  String toString() {
    return 'ArtifactsDownloadInput[downloadInputs=$downloadInputs, ]';
  }

  ArtifactsDownloadInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['downloadInputs'] == null) {
      downloadInputs = null;
    } else {
      downloadInputs = ArtifactDownloadInputBase.listFromJson(json['downloadInputs']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (downloadInputs != null)
      json['downloadInputs'] = downloadInputs;
    return json;
  }

  static List<ArtifactsDownloadInput> listFromJson(List<dynamic> json) {
    return json == null ? List<ArtifactsDownloadInput>() : json.map((value) => ArtifactsDownloadInput.fromJson(value)).toList();
  }

  static Map<String, ArtifactsDownloadInput> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArtifactsDownloadInput>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArtifactsDownloadInput.fromJson(value));
    }
    return map;
  }
}

