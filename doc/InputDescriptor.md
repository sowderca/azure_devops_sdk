# azure_devops_sdk.model.InputDescriptor

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dependencyInputIds** | **List&lt;String&gt;** | The ids of all inputs that the value of this input is dependent on. | [optional] [default to []]
**description** | **String** | Description of what this input is used for | [optional] [default to null]
**groupName** | **String** | The group localized name to which this input belongs and can be shown as a header for the container that will include all the inputs in the group. | [optional] [default to null]
**hasDynamicValueInformation** | **bool** | If true, the value information for this input is dynamic and should be fetched when the value of dependency inputs change. | [optional] [default to null]
**id** | **String** | Identifier for the subscription input | [optional] [default to null]
**inputMode** | **String** | Mode in which the value of this input should be entered | [optional] [default to null]
**isConfidential** | **bool** | Gets whether this input is confidential, such as for a password or application key | [optional] [default to null]
**name** | **String** | Localized name which can be shown as a label for the subscription input | [optional] [default to null]
**properties** | [**Map&lt;String, Object&gt;**](Object.md) | Custom properties for the input which can be used by the service provider | [optional] [default to {}]
**type** | **String** | Underlying data type for the input value. When this value is specified, InputMode, Validation and Values are optional. | [optional] [default to null]
**useInDefaultDescription** | **bool** | Gets whether this input is included in the default generated action description. | [optional] [default to null]
**validation** | [**InputValidation**](InputValidation.md) |  | [optional] [default to null]
**valueHint** | **String** | A hint for input value. It can be used in the UI as the input placeholder. | [optional] [default to null]
**values** | [**InputValues**](InputValues.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


