part of azure_devops_sdk.api;

class PipelineReference {
  
  JobReference jobReference = null;
  
  PhaseReference phaseReference = null;
  /* Reference of the pipeline with which this pipeline instance is related. */
  int pipelineId = null;
  
  StageReference stageReference = null;
  PipelineReference();

  @override
  String toString() {
    return 'PipelineReference[jobReference=$jobReference, phaseReference=$phaseReference, pipelineId=$pipelineId, stageReference=$stageReference, ]';
  }

  PipelineReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['jobReference'] == null) {
      jobReference = null;
    } else {
      jobReference = JobReference.fromJson(json['jobReference']);
    }
    if (json['phaseReference'] == null) {
      phaseReference = null;
    } else {
      phaseReference = PhaseReference.fromJson(json['phaseReference']);
    }
    if (json['pipelineId'] == null) {
      pipelineId = null;
    } else {
          pipelineId = json['pipelineId'];
    }
    if (json['stageReference'] == null) {
      stageReference = null;
    } else {
      stageReference = StageReference.fromJson(json['stageReference']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (jobReference != null)
      json['jobReference'] = jobReference;
    if (phaseReference != null)
      json['phaseReference'] = phaseReference;
    if (pipelineId != null)
      json['pipelineId'] = pipelineId;
    if (stageReference != null)
      json['stageReference'] = stageReference;
    return json;
  }

  static List<PipelineReference> listFromJson(List<dynamic> json) {
    return json == null ? List<PipelineReference>() : json.map((value) => PipelineReference.fromJson(value)).toList();
  }

  static Map<String, PipelineReference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PipelineReference>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PipelineReference.fromJson(value));
    }
    return map;
  }
}

