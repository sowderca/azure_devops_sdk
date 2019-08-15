# azure_devops_sdk.model.AggregatedDataForResultTrend

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**duration** | **String** | This is tests execution duration. | [optional] [default to null]
**resultsByOutcome** | [**Map&lt;String, AggregatedResultsByOutcome&gt;**](AggregatedResultsByOutcome.md) |  | [optional] [default to {}]
**runSummaryByState** | [**Map&lt;String, AggregatedRunsByState&gt;**](AggregatedRunsByState.md) |  | [optional] [default to {}]
**testResultsContext** | [**TestResultsContext**](TestResultsContext.md) |  | [optional] [default to null]
**totalTests** | **int** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


