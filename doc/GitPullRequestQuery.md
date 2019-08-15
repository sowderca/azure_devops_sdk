# azure_devops_sdk.model.GitPullRequestQuery

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**queries** | [**List&lt;GitPullRequestQueryInput&gt;**](GitPullRequestQueryInput.md) | The queries to perform. | [optional] [default to []]
**results** | [**List&lt;Map&lt;String, List&lt;GitPullRequest&gt;&gt;&gt;**](Map.md) | The results of the queries. This matches the QueryInputs list so Results[n] are the results of QueryInputs[n]. Each entry in the list is a dictionary of commit-&gt;pull requests. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


