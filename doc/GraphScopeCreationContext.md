# azure_devops_sdk.model.GraphScopeCreationContext

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**adminGroupDescription** | **String** | Set this field to override the default description of this scope&#39;s admin group. | [optional] [default to null]
**adminGroupName** | **String** | All scopes have an Administrator Group that controls access to the contents of the scope. Set this field to use a non-default group name for that administrators group. | [optional] [default to null]
**creatorId** | **String** | Set this optional field if this scope is created on behalf of a user other than the user making the request. This should be the Id of the user that is not the requester. | [optional] [default to null]
**name** | **String** | The scope must be provided with a unique name within the parent scope. This means the created scope can have a parent or child with the same name, but no siblings with the same name. | [optional] [default to null]
**scopeType** | **String** | The type of scope being created. | [optional] [default to null]
**storageKey** | **String** | An optional ID that uniquely represents the scope within it&#39;s parent scope. If this parameter is not provided, Vsts will generate on automatically. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


