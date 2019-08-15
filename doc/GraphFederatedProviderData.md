# azure_devops_sdk.model.GraphFederatedProviderData

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessToken** | **String** | The access token that can be used to communicated with the federated provider on behalf on the target identity, if we were able to successfully acquire one, otherwise &lt;code&gt;null&lt;/code&gt;, if we were not. | [optional] [default to null]
**providerName** | **String** | The name of the federated provider, e.g. \&quot;github.com\&quot;. | [optional] [default to null]
**subjectDescriptor** | **String** | The descriptor of the graph subject to which this federated provider data corresponds. | [optional] [default to null]
**version** | **int** | The version number of this federated provider data, which corresponds to when it was last updated. Can be used to prevent returning stale provider data from the cache when the caller is aware of a newer version, such as to prevent local cache poisoning from a remote cache or store. This is the app layer equivalent of the data layer sequence ID. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


