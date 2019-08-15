part of azure_devops_sdk.api;

class BoardBadge {
  /* The ID of the board represented by this badge. */
  String boardId = null;
  /* A link to the SVG resource. */
  String imageUrl = null;
  BoardBadge();

  @override
  String toString() {
    return 'BoardBadge[boardId=$boardId, imageUrl=$imageUrl, ]';
  }

  BoardBadge.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['boardId'] == null) {
      boardId = null;
    } else {
          boardId = json['boardId'];
    }
    if (json['imageUrl'] == null) {
      imageUrl = null;
    } else {
          imageUrl = json['imageUrl'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (boardId != null)
      json['boardId'] = boardId;
    if (imageUrl != null)
      json['imageUrl'] = imageUrl;
    return json;
  }

  static List<BoardBadge> listFromJson(List<dynamic> json) {
    return json == null ? List<BoardBadge>() : json.map((value) => BoardBadge.fromJson(value)).toList();
  }

  static Map<String, BoardBadge> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BoardBadge>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BoardBadge.fromJson(value));
    }
    return map;
  }
}

