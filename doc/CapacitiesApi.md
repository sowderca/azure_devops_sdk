# azure_devops_sdk.api.CapacitiesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](CapacitiesApi.md#callGet) | **GET** /{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{iterationId}/capacities/{teamMemberId} | 
[**list**](CapacitiesApi.md#list) | **GET** /{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{iterationId}/capacities | 
[**replace Capacities With Identity Ref**](CapacitiesApi.md#replace Capacities With Identity Ref) | **PUT** /{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{iterationId}/capacities | 
[**update**](CapacitiesApi.md#update) | **PATCH** /{organization}/{project}/{team}/_apis/work/teamsettings/iterations/{iterationId}/capacities/{teamMemberId} | 


# **callGet**
> TeamMemberCapacityIdentityRef callGet(organization, project, iterationId, teamMemberId, team, apiVersion)



Get a team member's capacity

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CapacitiesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var iterationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the iteration
var teamMemberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the team member
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, iterationId, teamMemberId, team, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling CapacitiesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **iterationId** | [**String**](.md)| ID of the iteration | [default to null]
 **teamMemberId** | [**String**](.md)| ID of the team member | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**TeamMemberCapacityIdentityRef**](TeamMemberCapacityIdentityRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<TeamMemberCapacityIdentityRef> list(organization, project, iterationId, team, apiVersion)



Get a team's capacity

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CapacitiesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var iterationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the iteration
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, project, iterationId, team, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling CapacitiesApi->list: $e\n");
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

[**List<TeamMemberCapacityIdentityRef>**](TeamMemberCapacityIdentityRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replace Capacities With Identity Ref**
> List<TeamMemberCapacityIdentityRef> replace Capacities With Identity Ref(organization, project, iterationId, team, apiVersion, body)



Replace a team's capacity

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CapacitiesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var iterationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the iteration
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = [List&lt;TeamMemberCapacityIdentityRef&gt;()]; // List<TeamMemberCapacityIdentityRef> | Team capacity to replace

try { 
    var result = api_instance.replace Capacities With Identity Ref(organization, project, iterationId, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling CapacitiesApi->replace Capacities With Identity Ref: $e\n");
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
 **body** | [**List&lt;TeamMemberCapacityIdentityRef&gt;**](TeamMemberCapacityIdentityRef.md)| Team capacity to replace | 

### Return type

[**List<TeamMemberCapacityIdentityRef>**](TeamMemberCapacityIdentityRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> TeamMemberCapacityIdentityRef update(organization, project, iterationId, teamMemberId, team, apiVersion, body)



Update a team member's capacity

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CapacitiesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var iterationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the iteration
var teamMemberId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the team member
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = CapacityPatch(); // CapacityPatch | Updated capacity

try { 
    var result = api_instance.update(organization, project, iterationId, teamMemberId, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling CapacitiesApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **iterationId** | [**String**](.md)| ID of the iteration | [default to null]
 **teamMemberId** | [**String**](.md)| ID of the team member | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**CapacityPatch**](CapacityPatch.md)| Updated capacity | 

### Return type

[**TeamMemberCapacityIdentityRef**](TeamMemberCapacityIdentityRef.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

