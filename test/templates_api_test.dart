import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for TemplatesApi
void main() {
  var instance = TemplatesApi();

  group('tests for TemplatesApi', () {
    // Gets a specific build definition template.
    //
    //Future<BuildDefinitionTemplate> callGet(String organization, String project, String templateId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Gets the template with specified id
    //
    //Future<WorkItemTemplate> callGet_0(String organization, String project, String team, String templateId, String apiVersion) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Creates a template
    //
    //Future<WorkItemTemplate> create(String organization, String project, String team, String apiVersion, WorkItemTemplate body) async 
    test('test create', () async {
      // TODO
    });

    // Deletes a build definition template.
    //
    //Future delete(String organization, String project, String templateId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Deletes the template with given id
    //
    //Future delete_0(String organization, String project, String team, String templateId, String apiVersion) async 
    test('test delete_0', () async {
      // TODO
    });

    // Gets all definition templates.
    //
    //Future<List<BuildDefinitionTemplate>> list(String organization, String project, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Gets template
    //
    //Future<List<WorkItemTemplateReference>> list_0(String organization, String project, String team, String apiVersion, { String workitemtypename }) async 
    test('test list_0', () async {
      // TODO
    });

    // Replace template contents
    //
    //Future<WorkItemTemplate> replace Template(String organization, String project, String team, String templateId, String apiVersion, WorkItemTemplate body) async 
    test('test replace Template', () async {
      // TODO
    });

    // Updates an existing build definition template.
    //
    //Future<BuildDefinitionTemplate> save Template(String organization, String project, String templateId, String apiVersion, BuildDefinitionTemplate body) async 
    test('test save Template', () async {
      // TODO
    });

  });
}
