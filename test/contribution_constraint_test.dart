import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for ContributionConstraint
void main() {
  var instance = ContributionConstraint();

  group('test ContributionConstraint', () {
    // An optional property that can be specified to group constraints together. All constraints within a group are AND'd together (all must be evaluate to True in order for the contribution to be included). Different groups of constraints are OR'd (only one group needs to evaluate to True for the contribution to be included).
    // int group (default value: null)
    test('to test the property `group`', () async {
      // TODO
    });

    // Fully qualified identifier of a shared constraint
    // String id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // If true, negate the result of the filter (include the contribution if the applied filter returns false instead of true)
    // bool inverse (default value: null)
    test('to test the property `inverse`', () async {
      // TODO
    });

    // Name of the IContributionFilter plugin
    // String name (default value: null)
    test('to test the property `name`', () async {
      // TODO
    });

    // JObject properties (default value: null)
    test('to test the property `properties`', () async {
      // TODO
    });

    // Constraints can be optionally be applied to one or more of the relationships defined in the contribution. If no relationships are defined then all relationships are associated with the constraint. This means the default behaviour will elimiate the contribution from the tree completely if the constraint is applied.
    // List<String> relationships (default value: [])
    test('to test the property `relationships`', () async {
      // TODO
    });


  });

}
