part of azure_devops_sdk.api;

class SummaryMailSection {
  /* Html content of summary mail. */
  String htmlContent = null;
  /* Rank of the summary mail. */
  int rank = null;
  /* Summary mail section type. MailSectionType has section types. */
  String sectionType = null;
  //enum sectionTypeEnum {  details,  environments,  issues,  testResults,  workItems,  releaseInfo,  };{
  /* Title of the summary mail. */
  String title = null;
  SummaryMailSection();

  @override
  String toString() {
    return 'SummaryMailSection[htmlContent=$htmlContent, rank=$rank, sectionType=$sectionType, title=$title, ]';
  }

  SummaryMailSection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['htmlContent'] == null) {
      htmlContent = null;
    } else {
          htmlContent = json['htmlContent'];
    }
    if (json['rank'] == null) {
      rank = null;
    } else {
          rank = json['rank'];
    }
    if (json['sectionType'] == null) {
      sectionType = null;
    } else {
          sectionType = json['sectionType'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (htmlContent != null)
      json['htmlContent'] = htmlContent;
    if (rank != null)
      json['rank'] = rank;
    if (sectionType != null)
      json['sectionType'] = sectionType;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<SummaryMailSection> listFromJson(List<dynamic> json) {
    return json == null ? List<SummaryMailSection>() : json.map((value) => SummaryMailSection.fromJson(value)).toList();
  }

  static Map<String, SummaryMailSection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SummaryMailSection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SummaryMailSection.fromJson(value));
    }
    return map;
  }
}

