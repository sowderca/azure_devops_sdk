# azure_devops_sdk.model.PolicyEvaluationRecord

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**artifactId** | **String** | A string which uniquely identifies the target of a policy evaluation. | [optional] [default to null]
**completedDate** | [**DateTime**](DateTime.md) | Time when this policy finished evaluating on this pull request. | [optional] [default to null]
**configuration** | [**PolicyConfiguration**](PolicyConfiguration.md) |  | [optional] [default to null]
**context** | [**JObject**](JObject.md) |  | [optional] [default to null]
**evaluationId** | **String** | Guid which uniquely identifies this evaluation record (one policy running on one pull request). | [optional] [default to null]
**startedDate** | [**DateTime**](DateTime.md) | Time when this policy was first evaluated on this pull request. | [optional] [default to null]
**status** | **String** | Status of the policy (Running, Approved, Failed, etc.) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


