# azure_devops_sdk.model.GitLastChangeTreeItems

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**commits** | [**List&lt;GitCommitRef&gt;**](GitCommitRef.md) | The list of commits referenced by Items, if they were requested. | [optional] [default to []]
**items** | [**List&lt;GitLastChangeItem&gt;**](GitLastChangeItem.md) | The last change of items. | [optional] [default to []]
**lastExploredTime** | [**DateTime**](DateTime.md) | The last explored time, in case the result is not comprehensive. Null otherwise. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


