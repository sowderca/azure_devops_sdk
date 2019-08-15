part of azure_devops_sdk.api;

class CounterVariable {
  
  String prefix = null;
  
  int seed = null;
  
  int value = null;
  CounterVariable();

  @override
  String toString() {
    return 'CounterVariable[prefix=$prefix, seed=$seed, value=$value, ]';
  }

  CounterVariable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['prefix'] == null) {
      prefix = null;
    } else {
          prefix = json['prefix'];
    }
    if (json['seed'] == null) {
      seed = null;
    } else {
          seed = json['seed'];
    }
    if (json['value'] == null) {
      value = null;
    } else {
          value = json['value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (prefix != null)
      json['prefix'] = prefix;
    if (seed != null)
      json['seed'] = seed;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<CounterVariable> listFromJson(List<dynamic> json) {
    return json == null ? List<CounterVariable>() : json.map((value) => CounterVariable.fromJson(value)).toList();
  }

  static Map<String, CounterVariable> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CounterVariable>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CounterVariable.fromJson(value));
    }
    return map;
  }
}

