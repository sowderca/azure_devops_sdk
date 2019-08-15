part of azure_devops_sdk.api;

class LightboxOptions {
  /* Height of desired lightbox, in pixels */
  int height = null;
  /* True to allow lightbox resizing, false to disallow lightbox resizing, defaults to false. */
  bool resizable = null;
  /* Width of desired lightbox, in pixels */
  int width = null;
  LightboxOptions();

  @override
  String toString() {
    return 'LightboxOptions[height=$height, resizable=$resizable, width=$width, ]';
  }

  LightboxOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['height'] == null) {
      height = null;
    } else {
          height = json['height'];
    }
    if (json['resizable'] == null) {
      resizable = null;
    } else {
          resizable = json['resizable'];
    }
    if (json['width'] == null) {
      width = null;
    } else {
          width = json['width'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (height != null)
      json['height'] = height;
    if (resizable != null)
      json['resizable'] = resizable;
    if (width != null)
      json['width'] = width;
    return json;
  }

  static List<LightboxOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<LightboxOptions>() : json.map((value) => LightboxOptions.fromJson(value)).toList();
  }

  static Map<String, LightboxOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LightboxOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LightboxOptions.fromJson(value));
    }
    return map;
  }
}

