# azure_devops_sdk.model.CloneOptions

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cloneRequirements** | **bool** | If set to true requirements will be cloned | [optional] [default to null]
**copyAllSuites** | **bool** | copy all suites from a source plan | [optional] [default to null]
**copyAncestorHierarchy** | **bool** | copy ancestor hierarchy | [optional] [default to null]
**destinationWorkItemType** | **String** | Name of the workitem type of the clone | [optional] [default to null]
**overrideParameters** | **Map&lt;String, String&gt;** | Key value pairs where the key value is overridden by the value. | [optional] [default to {}]
**relatedLinkComment** | **String** | Comment on the link that will link the new clone  test case to the original Set null for no comment | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


