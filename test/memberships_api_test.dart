import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for MembershipsApi
void main() {
  var instance = MembershipsApi();

  group('tests for MembershipsApi', () {
    // Create a new membership between a container and subject.
    //
    //Future<GraphMembership> add(String organization, String subjectDescriptor, String containerDescriptor, String apiVersion) async 
    test('test add', () async {
      // TODO
    });

    // Get a membership relationship between a container and subject.
    //
    //Future<GraphMembership> callGet(String organization, String subjectDescriptor, String containerDescriptor, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Check to see if a membership relationship between a container and subject exists.
    //
    //Future check Membership Existence(String organization, String subjectDescriptor, String containerDescriptor, String apiVersion) async 
    test('test check Membership Existence', () async {
      // TODO
    });

    // Get all the memberships where this descriptor is a member in the relationship.  The default value for direction is 'up' meaning return all memberships where the subject is a member (e.g. all groups the subject is a member of).  Alternatively, passing the direction as 'down' will return all memberships where the subject is a container (e.g. all members of the subject group).
    //
    //Future<List<GraphMembership>> list(String organization, String subjectDescriptor, String apiVersion, { String direction, int depth }) async 
    test('test list', () async {
      // TODO
    });

    // Deletes a membership between a container and subject.
    //
    //Future remove Membership(String organization, String subjectDescriptor, String containerDescriptor, String apiVersion) async 
    test('test remove Membership', () async {
      // TODO
    });

  });
}
