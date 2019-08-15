# azure_devops_sdk.model.WorkItemQueryClause

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clauses** | [**List&lt;WorkItemQueryClause&gt;**](WorkItemQueryClause.md) | Child clauses if the current clause is a logical operator | [optional] [default to []]
**field** | [**WorkItemFieldReference**](WorkItemFieldReference.md) |  | [optional] [default to null]
**fieldValue** | [**WorkItemFieldReference**](WorkItemFieldReference.md) |  | [optional] [default to null]
**isFieldValue** | **bool** | Determines if this is a field to field comparison | [optional] [default to null]
**logicalOperator** | **String** | Logical operator separating the condition clause | [optional] [default to null]
**operator_** | [**WorkItemFieldOperation**](WorkItemFieldOperation.md) |  | [optional] [default to null]
**value** | **String** | Right side of the condition when a field to value comparison | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


