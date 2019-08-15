# azure_devops_sdk.model.Contribution

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Description of the contribution/type | [optional] [default to null]
**id** | **String** | Fully qualified identifier of the contribution/type | [optional] [default to null]
**visibleTo** | **List&lt;String&gt;** | VisibleTo can be used to restrict whom can reference a given contribution/type. This value should be a list of publishers or extensions access is restricted too.  Examples: \&quot;ms\&quot; - Means only the \&quot;ms\&quot; publisher can reference this. \&quot;ms.vss-web\&quot; - Means only the \&quot;vss-web\&quot; extension from the \&quot;ms\&quot; publisher can reference this. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


