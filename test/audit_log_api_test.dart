import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for AuditLogApi
void main() {
  var instance = AuditLogApi();

  group('tests for AuditLogApi', () {
    // Queries audit log entries
    //
    //Future<AuditLogQueryResult> query(String organization, String apiVersion, { DateTime startTime, DateTime endTime, int batchSize, String continuationToken, bool skipAggregation }) async 
    test('test query', () async {
      // TODO
    });

  });
}
