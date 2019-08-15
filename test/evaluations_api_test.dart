import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for EvaluationsApi
void main() {
  var instance = EvaluationsApi();

  group('tests for EvaluationsApi', () {
    // Gets the present evaluation state of a policy.  Each policy which applies to a pull request will have an evaluation state which is specific to that policy running in the context of that pull request. Each evaluation is uniquely identified via a Guid. You can find all the policy evaluations for a specific pull request using the List operation of this controller.
    //
    //Future<PolicyEvaluationRecord> callGet(String organization, String project, String evaluationId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Retrieves a list of all the policy evaluation statuses for a specific pull request.  Evaluations are retrieved using an artifact ID which uniquely identifies the pull request. To generate an artifact ID for a pull request, use this template: ``` vstfs:///CodeReview/CodeReviewId/{projectId}/{pullRequestId} ```
    //
    //Future<List<PolicyEvaluationRecord>> list(String organization, String project, String artifactId, String apiVersion, { bool includeNotApplicable, int $top, int $skip }) async 
    test('test list', () async {
      // TODO
    });

    // Requeue the policy evaluation.  Some policies define a \"requeue\" action which performs some policy-specific operation. You can trigger this operation by updating an existing policy evaluation and setting the PolicyEvaluationRecord.Status field to Queued. Although any policy evaluation can be requeued, at present only build policies perform any action in response. Requeueing a build policy will queue a new build to run (cancelling any existing build which is running).
    //
    //Future<PolicyEvaluationRecord> requeue Policy Evaluation(String organization, String project, String evaluationId, String apiVersion) async 
    test('test requeue Policy Evaluation', () async {
      // TODO
    });

  });
}
