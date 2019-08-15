# azure_devops_sdk.model.TestRunCounterInstance

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**categoryName** | **String** | CategoryName for this counter | [optional] [default to null]
**counterInstanceId** | **String** | Combination of source and SourceInstanceId | [optional] [default to null]
**counterName** | **String** | Name of the counter Eg: Errors/Sec | [optional] [default to null]
**counterUnits** | **String** | Units for this counter. Empty string for mere numbers | [optional] [default to null]
**instanceName** | **String** | Instance Name Eg: _Avg,_Total etc | [optional] [default to null]
**isPreselectedCounter** | **bool** | true if this counter instance is a default counter | [optional] [default to null]
**machineName** | **String** | Machine from where this counter was collected Used in case of machine specific counters like - Agent CPU and memory etc. | [optional] [default to null]
**partOfCounterGroups** | **List&lt;String&gt;** | Counter Groups to which this counter instance is part of | [optional] [default to []]
**summaryData** | [**WebInstanceSummaryData**](WebInstanceSummaryData.md) |  | [optional] [default to null]
**uniqueName** | **String** | A unique name for this counter instance | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


