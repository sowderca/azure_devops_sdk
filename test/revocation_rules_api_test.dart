import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RevocationRulesApi
void main() {
  var instance = RevocationRulesApi();

  group('tests for RevocationRulesApi', () {
    // Creates a revocation rule to prevent the further usage of any OAuth authorizations that were created before the current point in time and which match the conditions in the rule.  Not all kinds of OAuth authorizations can be revoked directly. Some, such as self-describing session tokens, must instead by revoked by creating a rule which will be evaluated and used to reject matching OAuth credentials at authentication time. Revocation rules created through this endpoint will apply to all credentials that were issued before the datetime at which the rule was created and which match one or more additional conditions.
    //
    //Future create(String organization, String apiVersion, TokenAdminRevocationRule body) async 
    test('test create', () async {
      // TODO
    });

  });
}
