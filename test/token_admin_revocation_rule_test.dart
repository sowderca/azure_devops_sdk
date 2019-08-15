import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TokenAdminRevocationRule
void main() {
  var instance = TokenAdminRevocationRule();

  group('test TokenAdminRevocationRule', () {
    // A datetime cutoff. Tokens created before this time will be rejected. This is an optional parameter. If omitted, defaults to the time at which the rule was created.
    // DateTime createdBefore (default value: null)
    test('to test the property `createdBefore`', () async {
      // TODO
    });

    // A string containing a space-delimited list of OAuth scopes. A token matching any one of the scopes will be rejected. For a list of all OAuth scopes supported by Azure DevOps, see: https://docs.microsoft.com/en-us/azure/devops/integrate/get-started/authentication/oauth?view=azure-devops#scopes This is a mandatory parameter.
    // String scopes (default value: null)
    test('to test the property `scopes`', () async {
      // TODO
    });


  });

}
