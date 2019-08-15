import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ImportRequestsApi
void main() {
  var instance = ImportRequestsApi();

  group('tests for ImportRequestsApi', () {
    // Retrieve a particular import request.
    //
    //Future<GitImportRequest> callGet(String organization, String project, String repositoryId, int importRequestId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Create an import request.
    //
    //Future<GitImportRequest> create(String organization, String project, String repositoryId, String apiVersion, GitImportRequest body) async 
    test('test create', () async {
      // TODO
    });

    // Retrieve import requests for a repository.
    //
    //Future<List<GitImportRequest>> query(String organization, String project, String repositoryId, String apiVersion, { bool includeAbandoned }) async 
    test('test query', () async {
      // TODO
    });

    // Retry or abandon a failed import request.  There can only be one active import request associated with a repository. Marking a failed import request abandoned makes it inactive.
    //
    //Future<GitImportRequest> update(String organization, String project, String repositoryId, int importRequestId, String apiVersion, GitImportRequest body) async 
    test('test update', () async {
      // TODO
    });

  });
}
