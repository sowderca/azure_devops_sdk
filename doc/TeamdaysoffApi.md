# azure_devops_sdk.api.TeamdaysoffApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](TeamdaysoffApi.md#callGet) | **GET** /{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{iterationId}/teamdaysoff | 
[**update**](TeamdaysoffApi.md#update) | **PATCH** /{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{iterationId}/teamdaysoff | 


# **callGet**
> TeamSettingsDaysOff callGet(organization, project, iterationId, team, apiVersion)



Get team's days off for an iteration

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TeamdaysoffApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var iterationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the iteration
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, iterationId, team, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling TeamdaysoffApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **iterationId** | [**String**](.md)| ID of the iteration | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**TeamSettingsDaysOff**](TeamSettingsDaysOff.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> TeamSettingsDaysOff update(organization, project, iterationId, team, apiVersion, body)



Set a team's days off for an iteration

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TeamdaysoffApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var iterationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the iteration
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = TeamSettingsDaysOffPatch(); // TeamSettingsDaysOffPatch | Team's days off patch containting a list of start and end dates

try { 
    var result = api_instance.update(organization, project, iterationId, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamdaysoffApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **iterationId** | [**String**](.md)| ID of the iteration | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**TeamSettingsDaysOffPatch**](TeamSettingsDaysOffPatch.md)| Team&#39;s days off patch containting a list of start and end dates | 

### Return type

[**TeamSettingsDaysOff**](TeamSettingsDaysOff.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

