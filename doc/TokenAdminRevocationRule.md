# azure_devops_sdk.model.TokenAdminRevocationRule

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdBefore** | [**DateTime**](DateTime.md) | A datetime cutoff. Tokens created before this time will be rejected. This is an optional parameter. If omitted, defaults to the time at which the rule was created. | [optional] [default to null]
**scopes** | **String** | A string containing a space-delimited list of OAuth scopes. A token matching any one of the scopes will be rejected. For a list of all OAuth scopes supported by Azure DevOps, see: https://docs.microsoft.com/en-us/azure/devops/integrate/get-started/authentication/oauth?view&#x3D;azure-devops#scopes This is a mandatory parameter. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


