# azure_devops_sdk.model.CreateProcessRuleRequest

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actions** | [**List&lt;RuleAction&gt;**](RuleAction.md) | List of actions to take when the rule is triggered. | [optional] [default to []]
**conditions** | [**List&lt;RuleCondition&gt;**](RuleCondition.md) | List of conditions when the rule should be triggered. | [optional] [default to []]
**isDisabled** | **bool** | Indicates if the rule is disabled. | [optional] [default to null]
**name** | **String** | Name for the rule. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


