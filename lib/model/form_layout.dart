part of azure_devops_sdk.api;

class FormLayout {
  /* Gets and sets extensions list. */
  List<Extension> extensions = [];
  /* Top level tabs of the layout. */
  List<Page> pages = [];
  /* Headers controls of the layout. */
  List<Control> systemControls = [];
  FormLayout();

  @override
  String toString() {
    return 'FormLayout[extensions=$extensions, pages=$pages, systemControls=$systemControls, ]';
  }

  FormLayout.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['extensions'] == null) {
      extensions = null;
    } else {
      extensions = Extension.listFromJson(json['extensions']);
    }
    if (json['pages'] == null) {
      pages = null;
    } else {
      pages = Page.listFromJson(json['pages']);
    }
    if (json['systemControls'] == null) {
      systemControls = null;
    } else {
      systemControls = Control.listFromJson(json['systemControls']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (extensions != null)
      json['extensions'] = extensions;
    if (pages != null)
      json['pages'] = pages;
    if (systemControls != null)
      json['systemControls'] = systemControls;
    return json;
  }

  static List<FormLayout> listFromJson(List<dynamic> json) {
    return json == null ? List<FormLayout>() : json.map((value) => FormLayout.fromJson(value)).toList();
  }

  static Map<String, FormLayout> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FormLayout>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FormLayout.fromJson(value));
    }
    return map;
  }
}

