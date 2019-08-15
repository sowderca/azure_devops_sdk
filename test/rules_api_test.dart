import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RulesApi
void main() {
  var instance = RulesApi();

  group('tests for RulesApi', () {
    // Adds a rule to work item type in the process.
    //
    //Future<ProcessRule> add(String organization, String processId, String witRefName, String apiVersion, CreateProcessRuleRequest body) async 
    test('test add', () async {
      // TODO
    });

    // Returns a single rule in the work item type of the process.
    //
    //Future<ProcessRule> callGet(String organization, String processId, String witRefName, String ruleId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Removes a rule from the work item type in the process.
    //
    //Future delete(String organization, String processId, String witRefName, String ruleId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Returns a list of all rules in the work item type of the process.
    //
    //Future<List<ProcessRule>> list(String organization, String processId, String witRefName, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Updates a rule in the work item type of the process.
    //
    //Future<ProcessRule> update(String organization, String processId, String witRefName, String ruleId, String apiVersion, UpdateProcessRuleRequest body) async 
    test('test update', () async {
      // TODO
    });

  });
}
