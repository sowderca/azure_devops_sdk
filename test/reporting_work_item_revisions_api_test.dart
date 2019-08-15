import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ReportingWorkItemRevisionsApi
void main() {
  var instance = ReportingWorkItemRevisionsApi();

  group('tests for ReportingWorkItemRevisionsApi', () {
    // Get a batch of work item revisions with the option of including deleted items
    //
    //Future<ReportingWorkItemRevisionsBatch> read Reporting Revisions Get(String organization, String project, String apiVersion, { String fields, String types, String continuationToken, DateTime startDateTime, bool includeIdentityRef, bool includeDeleted, bool includeTagRef, bool includeLatestOnly, String $expand, bool includeDiscussionChangesOnly, int $maxPageSize }) async 
    test('test read Reporting Revisions Get', () async {
      // TODO
    });

    // Get a batch of work item revisions. This request may be used if your list of fields is large enough that it may run the URL over the length limit.
    //
    //Future<ReportingWorkItemRevisionsBatch> read Reporting Revisions Post(String organization, String project, String apiVersion, ReportingWorkItemRevisionsFilter body, { String continuationToken, DateTime startDateTime, String $expand }) async 
    test('test read Reporting Revisions Post', () async {
      // TODO
    });

  });
}
