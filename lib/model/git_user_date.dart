part of azure_devops_sdk.api;

class GitUserDate {
  /* Date of the Git operation. */
  DateTime date = null;
  /* Email address of the user performing the Git operation. */
  String email = null;
  /* Url for the user's avatar. */
  String imageUrl = null;
  /* Name of the user performing the Git operation. */
  String name = null;
  GitUserDate();

  @override
  String toString() {
    return 'GitUserDate[date=$date, email=$email, imageUrl=$imageUrl, name=$name, ]';
  }

  GitUserDate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['date'] == null) {
      date = null;
    } else {
      date = DateTime.parse(json['date']);
    }
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
    if (json['imageUrl'] == null) {
      imageUrl = null;
    } else {
          imageUrl = json['imageUrl'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (date != null)
      json['date'] = date == null ? null : date.toUtc().toIso8601String();
    if (email != null)
      json['email'] = email;
    if (imageUrl != null)
      json['imageUrl'] = imageUrl;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<GitUserDate> listFromJson(List<dynamic> json) {
    return json == null ? List<GitUserDate>() : json.map((value) => GitUserDate.fromJson(value)).toList();
  }

  static Map<String, GitUserDate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GitUserDate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GitUserDate.fromJson(value));
    }
    return map;
  }
}

