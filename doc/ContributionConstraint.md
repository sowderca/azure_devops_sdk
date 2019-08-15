# azure_devops_sdk.model.ContributionConstraint

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group** | **int** | An optional property that can be specified to group constraints together. All constraints within a group are AND&#39;d together (all must be evaluate to True in order for the contribution to be included). Different groups of constraints are OR&#39;d (only one group needs to evaluate to True for the contribution to be included). | [optional] [default to null]
**id** | **String** | Fully qualified identifier of a shared constraint | [optional] [default to null]
**inverse** | **bool** | If true, negate the result of the filter (include the contribution if the applied filter returns false instead of true) | [optional] [default to null]
**name** | **String** | Name of the IContributionFilter plugin | [optional] [default to null]
**properties** | [**JObject**](JObject.md) |  | [optional] [default to null]
**relationships** | **List&lt;String&gt;** | Constraints can be optionally be applied to one or more of the relationships defined in the contribution. If no relationships are defined then all relationships are associated with the constraint. This means the default behaviour will elimiate the contribution from the tree completely if the constraint is applied. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


