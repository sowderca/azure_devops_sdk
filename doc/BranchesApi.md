# azure_devops_sdk.api.BranchesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get Branch Refs**](BranchesApi.md#get Branch Refs) | **GET** /{organization}/{project}/_apis/tfvc/branches | 


# **get Branch Refs**
> List<TfvcBranchRef> get Branch Refs(organization, scopePath, project, apiVersion, includeDeleted, includeLinks)



Get branch hierarchies below the specified scopePath

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BranchesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var scopePath = scopePath_example; // String | Full path to the branch.  Default: $/ Examples: $/, $/MyProject, $/MyProject/SomeFolder.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var includeDeleted = true; // bool | Return deleted branches. Default: False
var includeLinks = true; // bool | Return links. Default: False

try { 
    var result = api_instance.get Branch Refs(organization, scopePath, project, apiVersion, includeDeleted, includeLinks);
    print(result);
} catch (e) {
    print("Exception when calling BranchesApi->get Branch Refs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **scopePath** | **String**| Full path to the branch.  Default: $/ Examples: $/, $/MyProject, $/MyProject/SomeFolder. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **includeDeleted** | **bool**| Return deleted branches. Default: False | [optional] [default to null]
 **includeLinks** | **bool**| Return links. Default: False | [optional] [default to null]

### Return type

[**List<TfvcBranchRef>**](TfvcBranchRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

