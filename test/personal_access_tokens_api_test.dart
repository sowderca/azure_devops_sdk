import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PersonalAccessTokensApi
void main() {
  var instance = PersonalAccessTokensApi();

  group('tests for PersonalAccessTokensApi', () {
    // Lists of all the session token details of the personal access tokens (PATs) for a particular user.
    //
    //Future<TokenAdminPagedSessionTokens> list(String organization, String subjectDescriptor, String apiVersion, { int pageSize, String continuationToken, bool isPublic }) async 
    test('test list', () async {
      // TODO
    });

  });
}
