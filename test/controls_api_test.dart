import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ControlsApi
void main() {
  var instance = ControlsApi();

  group('tests for ControlsApi', () {
    // Creates a control in a group.
    //
    //Future<Control> create(String organization, String processId, String witRefName, String groupId, String apiVersion, Control body) async 
    test('test create', () async {
      // TODO
    });

    // Moves a control to a specified group.
    //
    //Future<Control> move Control To Group(String organization, String processId, String witRefName, String groupId, String controlId, String apiVersion, Control body, { String removeFromGroupId }) async 
    test('test move Control To Group', () async {
      // TODO
    });

    // Removes a control from the work item form.
    //
    //Future remove Control From Group(String organization, String processId, String witRefName, String groupId, String controlId, String apiVersion) async 
    test('test remove Control From Group', () async {
      // TODO
    });

    // Updates a control on the work item form.
    //
    //Future<Control> update(String organization, String processId, String witRefName, String groupId, String controlId, String apiVersion, Control body) async 
    test('test update', () async {
      // TODO
    });

  });
}
