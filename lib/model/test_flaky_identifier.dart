part of azure_devops_sdk.api;

class TestFlakyIdentifier {
  /* Branch Name where Flakiness has to be Marked/Unmarked */
  String branchName = null;
  /* State for Flakiness */
  bool isFlaky = null;
  TestFlakyIdentifier();

  @override
  String toString() {
    return 'TestFlakyIdentifier[branchName=$branchName, isFlaky=$isFlaky, ]';
  }

  TestFlakyIdentifier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['branchName'] == null) {
      branchName = null;
    } else {
          branchName = json['branchName'];
    }
    if (json['isFlaky'] == null) {
      isFlaky = null;
    } else {
          isFlaky = json['isFlaky'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (branchName != null)
      json['branchName'] = branchName;
    if (isFlaky != null)
      json['isFlaky'] = isFlaky;
    return json;
  }

  static List<TestFlakyIdentifier> listFromJson(List<dynamic> json) {
    return json == null ? List<TestFlakyIdentifier>() : json.map((value) => TestFlakyIdentifier.fromJson(value)).toList();
  }

  static Map<String, TestFlakyIdentifier> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TestFlakyIdentifier>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TestFlakyIdentifier.fromJson(value));
    }
    return map;
  }
}

