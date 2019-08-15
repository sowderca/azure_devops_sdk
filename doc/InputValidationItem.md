# azure_devops_sdk.model.InputValidationItem

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isValid** | **bool** | Tells whether the current input is valid or not | [optional] [default to null]
**reason** | **String** | Reason for input validation failure | [optional] [default to null]
**type** | **String** | Type of validation item | [optional] [default to null]
**value** | **String** | Value to validate. The conditional expression to validate for the input for \&quot;expression\&quot; type Eg:eq(variables[&#39;Build.SourceBranch&#39;], &#39;refs/heads/master&#39;);eq(value, &#39;refs/heads/master&#39;) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


