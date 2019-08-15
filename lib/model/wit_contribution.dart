part of azure_devops_sdk.api;

class WitContribution {
  /* The id for the contribution. */
  String contributionId = null;
  /* The height for the contribution. */
  int height = null;
  /* A dictionary holding key value pairs for contribution inputs. */
  Map<String, Object> inputs = {};
  /* A value indicating if the contribution should be show on deleted workItem. */
  bool showOnDeletedWorkItem = null;
  WitContribution();

  @override
  String toString() {
    return 'WitContribution[contributionId=$contributionId, height=$height, inputs=$inputs, showOnDeletedWorkItem=$showOnDeletedWorkItem, ]';
  }

  WitContribution.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['contributionId'] == null) {
      contributionId = null;
    } else {
          contributionId = json['contributionId'];
    }
    if (json['height'] == null) {
      height = null;
    } else {
          height = json['height'];
    }
    if (json['inputs'] == null) {
      inputs = null;
    } else {
      inputs = Object.mapFromJson(json['inputs']);
    }
    if (json['showOnDeletedWorkItem'] == null) {
      showOnDeletedWorkItem = null;
    } else {
          showOnDeletedWorkItem = json['showOnDeletedWorkItem'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (contributionId != null)
      json['contributionId'] = contributionId;
    if (height != null)
      json['height'] = height;
    if (inputs != null)
      json['inputs'] = inputs;
    if (showOnDeletedWorkItem != null)
      json['showOnDeletedWorkItem'] = showOnDeletedWorkItem;
    return json;
  }

  static List<WitContribution> listFromJson(List<dynamic> json) {
    return json == null ? List<WitContribution>() : json.map((value) => WitContribution.fromJson(value)).toList();
  }

  static Map<String, WitContribution> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WitContribution>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WitContribution.fromJson(value));
    }
    return map;
  }
}

