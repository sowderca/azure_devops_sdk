# azure_devops_sdk.api.BoardparentsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](BoardparentsApi.md#list) | **GET** /{organization}/{project}/{team}/_apis/work/boards/boardparents | 


# **list**
> List<ParentChildWIMap> list(organization, project, childBacklogContextCategoryRefName, workitemIds, team, apiVersion)



Returns the list of parent field filter model for the given list of workitem ids

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = BoardparentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var childBacklogContextCategoryRefName = childBacklogContextCategoryRefName_example; // String | 
var workitemIds = workitemIds_example; // String | 
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, project, childBacklogContextCategoryRefName, workitemIds, team, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling BoardparentsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **childBacklogContextCategoryRefName** | **String**|  | [default to null]
 **workitemIds** | **String**|  | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<ParentChildWIMap>**](ParentChildWIMap.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

