part of azure_devops_sdk.api;

class Control {
  
  WitContribution contribution = null;
  /* Type of the control. */
  String controlType = null;
  /* Height of the control, for html controls. */
  int height = null;
  /* The id for the layout node. */
  String id = null;
  /* A value indicating whether this layout node has been inherited. from a parent layout.  This is expected to only be only set by the combiner. */
  bool inherited = null;
  /* A value indicating if the layout node is contribution or not. */
  bool isContribution = null;
  /* Label for the field. */
  String label = null;
  /* Inner text of the control. */
  String metadata = null;
  /* Order in which the control should appear in its group. */
  int order = null;
  /* A value indicating whether this layout node has been overridden . by a child layout. */
  bool overridden = null;
  /* A value indicating if the control is readonly. */
  bool readOnly = null;
  /* A value indicating if the control should be hidden or not. */
  bool visible = null;
  /* Watermark text for the textbox. */
  String watermark = null;
  Control();

  @override
  String toString() {
    return 'Control[contribution=$contribution, controlType=$controlType, height=$height, id=$id, inherited=$inherited, isContribution=$isContribution, label=$label, metadata=$metadata, order=$order, overridden=$overridden, readOnly=$readOnly, visible=$visible, watermark=$watermark, ]';
  }

  Control.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['contribution'] == null) {
      contribution = null;
    } else {
      contribution = WitContribution.fromJson(json['contribution']);
    }
    if (json['controlType'] == null) {
      controlType = null;
    } else {
          controlType = json['controlType'];
    }
    if (json['height'] == null) {
      height = null;
    } else {
          height = json['height'];
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
    if (json['metadata'] == null) {
      metadata = null;
    } else {
          metadata = json['metadata'];
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
    if (json['readOnly'] == null) {
      readOnly = null;
    } else {
          readOnly = json['readOnly'];
    }
    if (json['visible'] == null) {
      visible = null;
    } else {
          visible = json['visible'];
    }
    if (json['watermark'] == null) {
      watermark = null;
    } else {
          watermark = json['watermark'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (contribution != null)
      json['contribution'] = contribution;
    if (controlType != null)
      json['controlType'] = controlType;
    if (height != null)
      json['height'] = height;
    if (id != null)
      json['id'] = id;
    if (inherited != null)
      json['inherited'] = inherited;
    if (isContribution != null)
      json['isContribution'] = isContribution;
    if (label != null)
      json['label'] = label;
    if (metadata != null)
      json['metadata'] = metadata;
    if (order != null)
      json['order'] = order;
    if (overridden != null)
      json['overridden'] = overridden;
    if (readOnly != null)
      json['readOnly'] = readOnly;
    if (visible != null)
      json['visible'] = visible;
    if (watermark != null)
      json['watermark'] = watermark;
    return json;
  }

  static List<Control> listFromJson(List<dynamic> json) {
    return json == null ? List<Control>() : json.map((value) => Control.fromJson(value)).toList();
  }

  static Map<String, Control> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Control>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Control.fromJson(value));
    }
    return map;
  }
}

