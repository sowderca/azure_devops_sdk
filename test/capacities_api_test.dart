import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for CapacitiesApi
void main() {
  var instance = CapacitiesApi();

  group('tests for CapacitiesApi', () {
    // Get a team member's capacity
    //
    //Future<TeamMemberCapacityIdentityRef> callGet(String organization, String project, String iterationId, String teamMemberId, String team, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Get a team's capacity
    //
    //Future<List<TeamMemberCapacityIdentityRef>> list(String organization, String project, String iterationId, String team, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Replace a team's capacity
    //
    //Future<List<TeamMemberCapacityIdentityRef>> replace Capacities With Identity Ref(String organization, String project, String iterationId, String team, String apiVersion, List<TeamMemberCapacityIdentityRef> body) async 
    test('test replace Capacities With Identity Ref', () async {
      // TODO
    });

    // Update a team member's capacity
    //
    //Future<TeamMemberCapacityIdentityRef> update(String organization, String project, String iterationId, String teamMemberId, String team, String apiVersion, CapacityPatch body) async 
    test('test update', () async {
      // TODO
    });

  });
}
