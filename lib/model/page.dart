part of azure_devops_sdk.api;

class Page {
  
  WitContribution contribution = null;
  /* The id for the layout node. */
  String id = null;
  /* A value indicating whether this layout node has been inherited from a parent layout.  This is expected to only be only set by the combiner. */
  bool inherited = null;
  /* A value indicating if the layout node is contribution are not. */
  bool isContribution = null;
  /* The label for the page. */
  String label = null;
  /* A value indicating whether any user operations are permitted on this page and the contents of this page */
  bool locked = null;
  /* Order in which the page should appear in the layout. */
  int order = null;
  /* A value indicating whether this layout node has been overridden by a child layout. */
  bool overridden = null;
  /* The icon for the page. */
  String pageType = null;
  //enum pageTypeEnum {  custom,  history,  links,  attachments,  };{
  /* The sections of the page. */
  List<Section> sections = [];
  /* A value indicating if the page should be hidden or not. */
  bool visible = null;
  Page();

  @override
  String toString() {
    return 'Page[contribution=$contribution, id=$id, inherited=$inherited, isContribution=$isContribution, label=$label, locked=$locked, order=$order, overridden=$overridden, pageType=$pageType, sections=$sections, visible=$visible, ]';
  }

  Page.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['contribution'] == null) {
      contribution = null;
    } else {
      contribution = WitContribution.fromJson(json['contribution']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['inherited'] == null) {
      inherited = null;
    } else {
          inherited = json['inherited'];
    }
    if (json['isContribution'] == null) {
      isContribution = null;
    } else {
          isContribution = json['isContribution'];
    }
    if (json['label'] == null) {
      label = null;
    } else {
          label = json['label'];
    }
    if (json['locked'] == null) {
      locked = null;
    } else {
          locked = json['locked'];
    }
    if (json['order'] == null) {
      order = null;
    } else {
          order = json['order'];
    }
    if (json['overridden'] == null) {
      overridden = null;
    } else {
          overridden = json['overridden'];
    }
    if (json['pageType'] == null) {
      pageType = null;
    } else {
          pageType = json['pageType'];
    }
    if (json['sections'] == null) {
      sections = null;
    } else {
      sections = Section.listFromJson(json['sections']);
    }
    if (json['visible'] == null) {
      visible = null;
    } else {
          visible = json['visible'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (contribution != null)
      json['contribution'] = contribution;
    if (id != null)
      json['id'] = id;
    if (inherited != null)
      json['inherited'] = inherited;
    if (isContribution != null)
      json['isContribution'] = isContribution;
    if (label != null)
      json['label'] = label;
    if (locked != null)
      json['locked'] = locked;
    if (order != null)
      json['order'] = order;
    if (overridden != null)
      json['overridden'] = overridden;
    if (pageType != null)
      json['pageType'] = pageType;
    if (sections != null)
      json['sections'] = sections;
    if (visible != null)
      json['visible'] = visible;
    return json;
  }

  static List<Page> listFromJson(List<dynamic> json) {
    return json == null ? List<Page>() : json.map((value) => Page.fromJson(value)).toList();
  }

  static Map<String, Page> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Page>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Page.fromJson(value));
    }
    return map;
  }
}

