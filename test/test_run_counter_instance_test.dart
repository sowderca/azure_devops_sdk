import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';

// tests for TestRunCounterInstance
void main() {
  var instance = TestRunCounterInstance();

  group('test TestRunCounterInstance', () {
    // CategoryName for this counter
    // String categoryName (default value: null)
    test('to test the property `categoryName`', () async {
      // TODO
    });

    // Combination of source and SourceInstanceId
    // String counterInstanceId (default value: null)
    test('to test the property `counterInstanceId`', () async {
      // TODO
    });

    // Name of the counter Eg: Errors/Sec
    // String counterName (default value: null)
    test('to test the property `counterName`', () async {
      // TODO
    });

    // Units for this counter. Empty string for mere numbers
    // String counterUnits (default value: null)
    test('to test the property `counterUnits`', () async {
      // TODO
    });

    // Instance Name Eg: _Avg,_Total etc
    // String instanceName (default value: null)
    test('to test the property `instanceName`', () async {
      // TODO
    });

    // true if this counter instance is a default counter
    // bool isPreselectedCounter (default value: null)
    test('to test the property `isPreselectedCounter`', () async {
      // TODO
    });

    // Machine from where this counter was collected Used in case of machine specific counters like - Agent CPU and memory etc.
    // String machineName (default value: null)
    test('to test the property `machineName`', () async {
      // TODO
    });

    // Counter Groups to which this counter instance is part of
    // List<String> partOfCounterGroups (default value: [])
    test('to test the property `partOfCounterGroups`', () async {
      // TODO
    });

    // WebInstanceSummaryData summaryData (default value: null)
    test('to test the property `summaryData`', () async {
      // TODO
    });

    // A unique name for this counter instance
    // String uniqueName (default value: null)
    test('to test the property `uniqueName`', () async {
      // TODO
    });


  });

}
