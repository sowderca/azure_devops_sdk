# azure_devops_sdk.api.LatestApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](LatestApi.md#callGet) | **GET** /{organization}/{project}/_apis/build/latest/{definition} | 


# **callGet**
> Build callGet(organization, project, definition, apiVersion, branchName)



Gets the latest build for a definition, optionally scoped to a specific branch.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = LatestApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var definition = definition_example; // String | definition name with optional leading folder path, or the definition id
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var branchName = branchName_example; // String | optional parameter that indicates the specific branch to use

try { 
    var result = api_instance.callGet(organization, project, definition, apiVersion, branchName);
    print(result);
} catch (e) {
    print("Exception when calling LatestApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **definition** | **String**| definition name with optional leading folder path, or the definition id | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **branchName** | **String**| optional parameter that indicates the specific branch to use | [optional] [default to null]

### Return type

[**Build**](Build.md)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

