# azure_devops_sdk.api.WiqlApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](WiqlApi.md#callGet) | **HEAD** /{organization}/{project}/{team}/_apis/wit/wiql/{id} | 
[**query By Id**](WiqlApi.md#query By Id) | **GET** /{organization}/{project}/{team}/_apis/wit/wiql/{id} | 
[**query By Wiql**](WiqlApi.md#query By Wiql) | **POST** /{organization}/{project}/{team}/_apis/wit/wiql | 


# **callGet**
> int callGet(organization, id, project, team, apiVersion, timePrecision, $top)



Gets the results of the query given the query ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = WiqlApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The query ID.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var timePrecision = true; // bool | Whether or not to use time precision.
var $top = 56; // int | The max number of results to return.

try { 
    var result = api_instance.callGet(organization, id, project, team, apiVersion, timePrecision, $top);
    print(result);
} catch (e) {
    print("Exception when calling WiqlApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | [**String**](.md)| The query ID. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **timePrecision** | **bool**| Whether or not to use time precision. | [optional] [default to null]
 **$top** | **int**| The max number of results to return. | [optional] [default to null]

### Return type

**int**

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query By Id**
> WorkItemQueryResult query By Id(organization, id, project, team, apiVersion, timePrecision, $top)



Gets the results of the query given the query ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WiqlApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The query ID.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var timePrecision = true; // bool | Whether or not to use time precision.
var $top = 56; // int | The max number of results to return.

try { 
    var result = api_instance.query By Id(organization, id, project, team, apiVersion, timePrecision, $top);
    print(result);
} catch (e) {
    print("Exception when calling WiqlApi->query By Id: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | [**String**](.md)| The query ID. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **timePrecision** | **bool**| Whether or not to use time precision. | [optional] [default to null]
 **$top** | **int**| The max number of results to return. | [optional] [default to null]

### Return type

[**WorkItemQueryResult**](WorkItemQueryResult.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query By Wiql**
> WorkItemQueryResult query By Wiql(organization, project, team, apiVersion, body, timePrecision, $top)



Gets the results of the query given its WIQL.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = WiqlApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = Wiql(); // Wiql | The query containing the WIQL.
var timePrecision = true; // bool | Whether or not to use time precision.
var $top = 56; // int | The max number of results to return.

try { 
    var result = api_instance.query By Wiql(organization, project, team, apiVersion, body, timePrecision, $top);
    print(result);
} catch (e) {
    print("Exception when calling WiqlApi->query By Wiql: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**Wiql**](Wiql.md)| The query containing the WIQL. | 
 **timePrecision** | **bool**| Whether or not to use time precision. | [optional] [default to null]
 **$top** | **int**| The max number of results to return. | [optional] [default to null]

### Return type

[**WorkItemQueryResult**](WorkItemQueryResult.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

