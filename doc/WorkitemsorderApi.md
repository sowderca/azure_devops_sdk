# azure_devops_sdk.api.WorkitemsorderApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reorder Backlog Work Items**](WorkitemsorderApi.md#reorder Backlog Work Items) | **PATCH** /{organization}/{project}/{team}/_apis/work/workitemsorder | 
[**reorder Iteration Work Items**](WorkitemsorderApi.md#reorder Iteration Work Items) | **PATCH** /{organization}/{project}/{team}/_apis/work/iterations/{iterationId}/workitemsorder | 


# **reorder Backlog Work Items**
> List<ReorderResult> reorder Backlog Work Items(organization, project, team, apiVersion, body)



Reorder Product Backlog/Boards Work Items

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkitemsorderApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = ReorderOperation(); // ReorderOperation | 

try { 
    var result = api_instance.reorder Backlog Work Items(organization, project, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling WorkitemsorderApi->reorder Backlog Work Items: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**ReorderOperation**](ReorderOperation.md)|  | 

### Return type

[**List<ReorderResult>**](ReorderResult.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reorder Iteration Work Items**
> List<ReorderResult> reorder Iteration Work Items(organization, project, team, iterationId, apiVersion, body)



Reorder Sprint Backlog/Taskboard Work Items

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WorkitemsorderApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var iterationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The id of the iteration
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = ReorderOperation(); // ReorderOperation | 

try { 
    var result = api_instance.reorder Iteration Work Items(organization, project, team, iterationId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling WorkitemsorderApi->reorder Iteration Work Items: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **iterationId** | [**String**](.md)| The id of the iteration | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**ReorderOperation**](ReorderOperation.md)|  | 

### Return type

[**List<ReorderResult>**](ReorderResult.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

