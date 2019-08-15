# azure_devops_sdk.model.DataProviderResult

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientProviders** | [**Map&lt;String, ClientDataProviderQuery&gt;**](ClientDataProviderQuery.md) | This is the set of data providers that were requested, but either they were defined as client providers, or as remote providers that failed and may be retried by the client. | [optional] [default to {}]
**data** | [**Map&lt;String, Object&gt;**](Object.md) | Property bag of data keyed off of the data provider contribution id | [optional] [default to {}]
**exceptions** | [**Map&lt;String, DataProviderExceptionDetails&gt;**](DataProviderExceptionDetails.md) | Set of exceptions that occurred resolving the data providers. | [optional] [default to {}]
**resolvedProviders** | [**List&lt;ResolvedDataProvider&gt;**](ResolvedDataProvider.md) | List of data providers resolved in the data-provider query | [optional] [default to []]
**scopeName** | **String** | Scope name applied to this data provider result. | [optional] [default to null]
**scopeValue** | **String** | Scope value applied to this data provider result. | [optional] [default to null]
**sharedData** | [**Map&lt;String, Object&gt;**](Object.md) | Property bag of shared data that was contributed to by any of the individual data providers | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


