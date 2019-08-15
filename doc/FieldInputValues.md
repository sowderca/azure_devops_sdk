# azure_devops_sdk.model.FieldInputValues

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**defaultValue** | **String** | The default value to use for this input | [optional] [default to null]
**error** | [**InputValuesError**](InputValuesError.md) |  | [optional] [default to null]
**inputId** | **String** | The id of the input | [optional] [default to null]
**isDisabled** | **bool** | Should this input be disabled | [optional] [default to null]
**isLimitedToPossibleValues** | **bool** | Should the value be restricted to one of the values in the PossibleValues (True) or are the values in PossibleValues just a suggestion (False) | [optional] [default to null]
**isReadOnly** | **bool** | Should this input be made read-only | [optional] [default to null]
**possibleValues** | [**List&lt;InputValue&gt;**](InputValue.md) | Possible values that this input can take | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


