part of azure_devops_sdk.api;

class ImportRepositoryValidation {
  
  GitImportGitSource gitSource = null;
  
  String password = null;
  
  GitImportTfvcSource tfvcSource = null;
  
  String username = null;
  ImportRepositoryValidation();

  @override
  String toString() {
    return 'ImportRepositoryValidation[gitSource=$gitSource, password=$password, tfvcSource=$tfvcSource, username=$username, ]';
  }

  ImportRepositoryValidation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['gitSource'] == null) {
      gitSource = null;
    } else {
      gitSource = GitImportGitSource.fromJson(json['gitSource']);
    }
    if (json['password'] == null) {
      password = null;
    } else {
          password = json['password'];
    }
    if (json['tfvcSource'] == null) {
      tfvcSource = null;
    } else {
      tfvcSource = GitImportTfvcSource.fromJson(json['tfvcSource']);
    }
    if (json['username'] == null) {
      username = null;
    } else {
          username = json['username'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (gitSource != null)
      json['gitSource'] = gitSource;
    if (password != null)
      json['password'] = password;
    if (tfvcSource != null)
      json['tfvcSource'] = tfvcSource;
    if (username != null)
      json['username'] = username;
    return json;
  }

  static List<ImportRepositoryValidation> listFromJson(List<dynamic> json) {
    return json == null ? List<ImportRepositoryValidation>() : json.map((value) => ImportRepositoryValidation.fromJson(value)).toList();
  }

  static Map<String, ImportRepositoryValidation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ImportRepositoryValidation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ImportRepositoryValidation.fromJson(value));
    }
    return map;
  }
}

