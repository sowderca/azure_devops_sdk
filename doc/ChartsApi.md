# azure_devops_sdk.api.ChartsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ChartsApi.md#callGet) | **GET** /{organization}/{project}/{team}/_apis/work/boards/{board}/charts/{name} | 
[**list**](ChartsApi.md#list) | **GET** /{organization}/{project}/{team}/_apis/work/boards/{board}/charts | 
[**update**](ChartsApi.md#update) | **PATCH** /{organization}/{project}/{team}/_apis/work/boards/{board}/charts/{name} | 


# **callGet**
> BoardChart callGet(organization, project, board, name, team, apiVersion)



Get a board chart

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChartsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var board = board_example; // String | Identifier for board, either board's backlog level name (Eg:\"Stories\") or Id
var name = name_example; // String | The chart name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, board, name, team, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ChartsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **board** | **String**| Identifier for board, either board&#39;s backlog level name (Eg:\&quot;Stories\&quot;) or Id | [default to null]
 **name** | **String**| The chart name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**BoardChart**](BoardChart.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<BoardChartReference> list(organization, project, board, team, apiVersion)



Get board charts

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChartsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var board = board_example; // String | Identifier for board, either board's backlog level name (Eg:\"Stories\") or Id
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, project, board, team, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ChartsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **board** | **String**| Identifier for board, either board&#39;s backlog level name (Eg:\&quot;Stories\&quot;) or Id | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<BoardChartReference>**](BoardChartReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> BoardChart update(organization, project, board, name, team, apiVersion, body)



Update a board chart

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ChartsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var board = board_example; // String | Identifier for board, either board's backlog level name (Eg:\"Stories\") or Id
var name = name_example; // String | The chart name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = BoardChart(); // BoardChart | 

try { 
    var result = api_instance.update(organization, project, board, name, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ChartsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **board** | **String**| Identifier for board, either board&#39;s backlog level name (Eg:\&quot;Stories\&quot;) or Id | [default to null]
 **name** | **String**| The chart name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**BoardChart**](BoardChart.md)|  | 

### Return type

[**BoardChart**](BoardChart.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

