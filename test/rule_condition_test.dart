import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for RuleCondition
void main() {
  var instance = RuleCondition();

  group('test RuleCondition', () {
    // Type of condition. $When. This condition limits the execution of its children to cases when another field has a particular value, i.e. when the Is value of the referenced field is equal to the given literal value. $WhenNot.This condition limits the execution of its children to cases when another field does not have a particular value, i.e.when the Is value of the referenced field is not equal to the given literal value. $WhenChanged.This condition limits the execution of its children to cases when another field has changed, i.e.when the Is value of the referenced field is not equal to the Was value of that field. $WhenNotChanged.This condition limits the execution of its children to cases when another field has not changed, i.e.when the Is value of the referenced field is equal to the Was value of that field.
    // String conditionType (default value: null)
    test('to test the property `conditionType`', () async {
      // TODO
    });

    // Field that defines condition.
    // String field (default value: null)
    test('to test the property `field`', () async {
      // TODO
    });

    // Value of field to define the condition for rule.
    // String value (default value: null)
    test('to test the property `value`', () async {
      // TODO
    });


  });

}
