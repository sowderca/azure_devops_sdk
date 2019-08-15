# azure_devops_sdk.api.BadgeApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](BadgeApi.md#callGet) | **GET** /{organization}/_apis/public/build/definitions/{project}/{definitionId}/badge | 
[**get Build Badge Data**](BadgeApi.md#get Build Badge Data) | **GET** /{organization}/{project}/_apis/build/repos/{repoType}/badge | 


# **callGet**
> String callGet(organization, project, definitionId, apiVersion, branchName)



This endpoint is deprecated. Please see the Build Status REST endpoint.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = BadgeApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The project ID or name.
var definitionId = 56; // int | The ID of the definition.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var branchName = branchName_example; // String | The name of the branch.

try { 
    var result = api_instance.callGet(organization, project, definitionId, apiVersion, branchName);
    print(result);
} catch (e) {
    print("Exception when calling BadgeApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | [**String**](.md)| The project ID or name. | [default to null]
 **definitionId** | **int**| The ID of the definition. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **branchName** | **String**| The name of the branch. | [optional] [default to null]

### Return type

**String**

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Build Badge Data**
> String get Build Badge Data(organization, project, repoType, apiVersion, repoId, branchName)



Gets a badge that indicates the status of the most recent build for the specified branch.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BadgeApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var repoType = repoType_example; // String | The repository type.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var repoId = repoId_example; // String | The repository ID.
var branchName = branchName_example; // String | The branch name.

try { 
    var result = api_instance.get Build Badge Data(organization, project, repoType, apiVersion, repoId, branchName);
    print(result);
} catch (e) {
    print("Exception when calling BadgeApi->get Build Badge Data: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **repoType** | **String**| The repository type. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **repoId** | **String**| The repository ID. | [optional] [default to null]
 **branchName** | **String**| The branch name. | [optional] [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

