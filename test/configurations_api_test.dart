import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ConfigurationsApi
void main() {
  var instance = ConfigurationsApi();

  group('tests for ConfigurationsApi', () {
    // Get a policy configuration by its ID.
    //
    //Future<PolicyConfiguration> callGet(String organization, String project, int configurationId, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Get a test configuration
    //
    //Future<TestConfiguration> callGet_0(String organization, String project, int testConfigurationId, String apiVersion) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Create a policy configuration of a given policy type.
    //
    //Future<PolicyConfiguration> create(String organization, String project, int configurationId, String apiVersion, PolicyConfiguration body) async 
    test('test create', () async {
      // TODO
    });

    // Create a test configuration.
    //
    //Future<TestConfiguration> create_0(String organization, String project, String apiVersion, TestConfigurationCreateUpdateParameters body) async 
    test('test create_0', () async {
      // TODO
    });

    // Delete a policy configuration by its ID.
    //
    //Future delete(String organization, String project, int configurationId, String apiVersion) async 
    test('test delete', () async {
      // TODO
    });

    // Delete a test configuration by its ID.
    //
    //Future delete_0(String organization, String project, int testConfiguartionId, String apiVersion) async 
    test('test delete_0', () async {
      // TODO
    });

    // Get a list of policy configurations in a project.  The 'scope' parameter for this API should not be used, except for legacy compatability reasons. It returns specifically scoped policies and does not support heirarchical nesting. Instead, use the /_apis/git/policy/configurations API, which provides first class scope filtering support.  The optional `policyType` parameter can be used to filter the set of policies returned from this method.
    //
    //Future<List<PolicyConfiguration>> list(String organization, String project, String apiVersion, { String scope, String policyType }) async 
    test('test list', () async {
      // TODO
    });

    // Get a list of test configurations.
    //
    //Future<List<TestConfiguration>> list_0(String organization, String project, String apiVersion, { String continuationToken }) async 
    test('test list_0', () async {
      // TODO
    });

    // Update a policy configuration by its ID.
    //
    //Future<PolicyConfiguration> update(String organization, String project, int configurationId, String apiVersion, PolicyConfiguration body) async 
    test('test update', () async {
      // TODO
    });

    // Update a test configuration by its ID.
    //
    //Future<TestConfiguration> update_0(String organization, String project, int testConfiguartionId, String apiVersion, TestConfigurationCreateUpdateParameters body) async 
    test('test update_0', () async {
      // TODO
    });

  });
}
