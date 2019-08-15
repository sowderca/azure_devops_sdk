import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for AvailabilityApi
void main() {
  var instance = AvailabilityApi();

  group('tests for AvailabilityApi', () {
    // Check the availability of symbol service. This includes checking for feature flag, and possibly license in future. Note this is NOT an anonymous endpoint, and the caller will be redirected to authentication before hitting it.
    //
    //Future check Availability(String organization, String apiVersion) async 
    test('test check Availability', () async {
      // TODO
    });

  });
}
