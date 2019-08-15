import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PagesApi
void main() {
  var instance = PagesApi();

  group('tests for PagesApi', () {
    // Adds a page to the work item form.
    //
    //Future<Page> add(String organization, String processId, String witRefName, String apiVersion, Page body) async 
    test('test add', () async {
      // TODO
    });

    // Creates or edits a wiki page.
    //
    //Future<WikiPage> create Or Update(String organization, String project, String wikiIdentifier, String path, String version, String apiVersion, WikiPageCreateOrUpdateParameters body, { String comment, String versionDescriptorVersionOptions, String versionDescriptorVersion, String versionDescriptorVersionType }) async 
    test('test create Or Update', () async {
      // TODO
    });

    // Deletes a wiki page.
    //
    //Future<WikiPage> delete Page(String organization, String project, String wikiIdentifier, String path, String apiVersion, { String comment, String versionDescriptorVersionOptions, String versionDescriptorVersion, String versionDescriptorVersionType }) async 
    test('test delete Page', () async {
      // TODO
    });

    // Deletes a wiki page.
    //
    //Future<WikiPage> delete Page By Id(String organization, String project, String wikiIdentifier, int id, String apiVersion, { String comment }) async 
    test('test delete Page By Id', () async {
      // TODO
    });

    // Gets metadata or content of the wiki page for the provided path. Content negotiation is done based on the `Accept` header sent in the request.
    //
    //Future<WikiPage> get Page(String organization, String project, String wikiIdentifier, String apiVersion, { String path, String recursionLevel, String versionDescriptorVersionOptions, String versionDescriptorVersion, String versionDescriptorVersionType, bool includeContent }) async 
    test('test get Page', () async {
      // TODO
    });

    // Gets metadata or content of the wiki page for the provided page id. Content negotiation is done based on the `Accept` header sent in the request.
    //
    //Future<WikiPage> get Page By Id(String organization, String project, String wikiIdentifier, int id, String apiVersion, { String recursionLevel, bool includeContent }) async 
    test('test get Page By Id', () async {
      // TODO
    });

    // Removes a page from the work item form
    //
    //Future remove Page(String organization, String processId, String witRefName, String pageId, String apiVersion) async 
    test('test remove Page', () async {
      // TODO
    });

    // Edits a wiki page.
    //
    //Future<WikiPage> update(String organization, String project, String wikiIdentifier, int id, String version, String apiVersion, WikiPageCreateOrUpdateParameters body, { String comment }) async 
    test('test update', () async {
      // TODO
    });

    // Updates a page on the work item form
    //
    //Future<Page> update_0(String organization, String processId, String witRefName, String apiVersion, Page body) async 
    test('test update_0', () async {
      // TODO
    });

  });
}
