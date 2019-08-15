part of azure_devops_sdk.api;

class Avatar {
  
  bool isAutoGenerated = null;
  
  String size = null;
  //enum sizeEnum {  small,  medium,  large,  };{
  
  DateTime timeStamp = null;
  
  List<String> value = [];
  Avatar();

  @override
  String toString() {
    return 'Avatar[isAutoGenerated=$isAutoGenerated, size=$size, timeStamp=$timeStamp, value=$value, ]';
  }

  Avatar.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['isAutoGenerated'] == null) {
      isAutoGenerated = null;
    } else {
          isAutoGenerated = json['isAutoGenerated'];
    }
    if (json['size'] == null) {
      size = null;
    } else {
          size = json['size'];
    }
    if (json['timeStamp'] == null) {
      timeStamp = null;
    } else {
      timeStamp = DateTime.parse(json['timeStamp']);
    }
    if (json['value'] == null) {
      value = null;
    } else {
      value = (json['value'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isAutoGenerated != null)
      json['isAutoGenerated'] = isAutoGenerated;
    if (size != null)
      json['size'] = size;
    if (timeStamp != null)
      json['timeStamp'] = timeStamp == null ? null : timeStamp.toUtc().toIso8601String();
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<Avatar> listFromJson(List<dynamic> json) {
    return json == null ? List<Avatar>() : json.map((value) => Avatar.fromJson(value)).toList();
  }

  static Map<String, Avatar> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Avatar>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Avatar.fromJson(value));
    }
    return map;
  }
}

