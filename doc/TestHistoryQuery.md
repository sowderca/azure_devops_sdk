# azure_devops_sdk.model.TestHistoryQuery

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatedTestName** | **String** | Automated test name of the TestCase. | [optional] [default to null]
**branch** | **String** | Results to be get for a particular branches. | [optional] [default to null]
**buildDefinitionId** | **int** | Get the results history only for this BuildDefinitionId. This to get used in query GroupBy should be Branch. If this is provided, Branch will have no use. | [optional] [default to null]
**continuationToken** | **String** | It will be filled by server. If not null means there are some results still to be get, and we need to call this REST API with this ContinuousToken. It is not supposed to be created (or altered, if received from server in last batch) by user. | [optional] [default to null]
**groupBy** | **String** | Group the result on the basis of TestResultGroupBy. This can be Branch, Environment or null(if results are fetched by BuildDefinitionId) | [optional] [default to null]
**maxCompleteDate** | [**DateTime**](DateTime.md) | History to get between time interval MaxCompleteDate and  (MaxCompleteDate - TrendDays). Default is current date time. | [optional] [default to null]
**releaseEnvDefinitionId** | **int** | Get the results history only for this ReleaseEnvDefinitionId. This to get used in query GroupBy should be Environment. | [optional] [default to null]
**resultsForGroup** | [**List&lt;TestResultHistoryForGroup&gt;**](TestResultHistoryForGroup.md) | List of TestResultHistoryForGroup which are grouped by GroupBy | [optional] [default to []]
**testCaseId** | **int** | Get the results history only for this testCaseId. This to get used in query to filter the result along with automatedtestname | [optional] [default to null]
**trendDays** | **int** | Number of days for which history to collect. Maximum supported value is 7 days. Default is 7 days. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


