import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ProcessesApi
void main() {
  var instance = ProcessesApi();

  group('tests for ProcessesApi', () {
    // Get a process by ID.
    //
    //Future<Process> callGet(String organization, String processId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Get a single process of a specified ID.
    //
    //Future<ProcessInfo> callGet_0(String organization, String processTypeId, String apiVersion, { String $expand }) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Creates a process.
    //
    //Future<ProcessInfo> create(String organization, String apiVersion, CreateProcessModel body) async 
    test('test create', () async {
      // TODO
    });

    // Removes a process of a specific ID.
    //
    //Future delete(String organization, String processTypeId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Edit a process of a specific ID.
    //
    //Future<ProcessInfo> edit Process(String organization, String processTypeId, String apiVersion, UpdateProcessModel body) async 
    test('test edit Process', () async {
      // TODO
    });

    // Returns requested process template.
    //
    //Future<String> export Process Template(String organization, String id, String apiVersion) async 
    test('test export Process Template', () async {
      // TODO
    });

    // Imports a process from zip file.
    //
    //Future<ProcessImportResult> import Process Template(String organization, String apiVersion, String body, { bool ignoreWarnings, bool replaceExistingTemplate }) async 
    test('test import Process Template', () async {
      // TODO
    });

    // Tells whether promote has completed for the specified promote job ID.
    //
    //Future<ProcessPromoteStatus> import Process Template Status(String organization, String id, String apiVersion) async 
    test('test import Process Template Status', () async {
      // TODO
    });

    // Get a list of processes.
    //
    //Future<List<Process>> list(String organization, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Get list of all processes including system and inherited.
    //
    //Future<List<ProcessInfo>> list_0(String organization, String apiVersion, { String $expand }) async 
    test('test list_0', () async {
      // TODO
    });

  });
}
