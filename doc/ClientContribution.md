# azure_devops_sdk.model.ClientContribution

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Description of the contribution/type | [optional] [default to null]
**id** | **String** | Fully qualified identifier of the contribution/type | [optional] [default to null]
**includes** | **List&lt;String&gt;** | Includes is a set of contributions that should have this contribution included in their targets list. | [optional] [default to []]
**properties** | [**JObject**](JObject.md) |  | [optional] [default to null]
**targets** | **List&lt;String&gt;** | The ids of the contribution(s) that this contribution targets. (parent contributions) | [optional] [default to []]
**type** | **String** | Id of the Contribution Type | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


