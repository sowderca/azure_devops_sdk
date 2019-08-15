# azure_devops_sdk.api.TeamsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](TeamsApi.md#callGet) | **GET** /{organization}/_apis/projects/{projectId}/teams/{teamId} | 
[**create**](TeamsApi.md#create) | **POST** /{organization}/_apis/projects/{projectId}/teams | 
[**delete**](TeamsApi.md#delete) | **DELETE** /{organization}/_apis/projects/{projectId}/teams/{teamId} | 
[**get All Teams**](TeamsApi.md#get All Teams) | **GET** /{organization}/_apis/teams | 
[**get Team Members With Extended Properties**](TeamsApi.md#get Team Members With Extended Properties) | **GET** /{organization}/_apis/projects/{projectId}/teams/{teamId}/members | 
[**get Teams**](TeamsApi.md#get Teams) | **GET** /{organization}/_apis/projects/{projectId}/teams | 
[**update**](TeamsApi.md#update) | **PATCH** /{organization}/_apis/projects/{projectId}/teams/{teamId} | 


# **callGet**
> WebApiTeam callGet(organization, projectId, teamId, apiVersion, $expandIdentity)



Get a specific team.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TeamsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = projectId_example; // String | The name or ID (GUID) of the team project containing the team.
var teamId = teamId_example; // String | The name or ID (GUID) of the team.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $expandIdentity = true; // bool | A value indicating whether or not to expand Identity information in the result WebApiTeam object.

try { 
    var result = api_instance.callGet(organization, projectId, teamId, apiVersion, $expandIdentity);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | **String**| The name or ID (GUID) of the team project containing the team. | [default to null]
 **teamId** | **String**| The name or ID (GUID) of the team. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$expandIdentity** | **bool**| A value indicating whether or not to expand Identity information in the result WebApiTeam object. | [optional] [default to null]

### Return type

[**WebApiTeam**](WebApiTeam.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> WebApiTeam create(organization, projectId, apiVersion, body)



Create a team in a team project.  Possible failure scenarios Invalid project name/ID (project doesn't exist) 404 Invalid team name or description 400 Team already exists 400 Insufficient privileges 400

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TeamsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = projectId_example; // String | The name or ID (GUID) of the team project in which to create the team.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = WebApiTeam(); // WebApiTeam | The team data used to create the team.

try { 
    var result = api_instance.create(organization, projectId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | **String**| The name or ID (GUID) of the team project in which to create the team. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**WebApiTeam**](WebApiTeam.md)| The team data used to create the team. | 

### Return type

[**WebApiTeam**](WebApiTeam.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, projectId, teamId, apiVersion)



Delete a team.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TeamsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = projectId_example; // String | The name or ID (GUID) of the team project containing the team to delete.
var teamId = teamId_example; // String | The name or ID of the team to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(organization, projectId, teamId, apiVersion);
} catch (e) {
    print("Exception when calling TeamsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | **String**| The name or ID (GUID) of the team project containing the team to delete. | [default to null]
 **teamId** | **String**| The name or ID of the team to delete. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get All Teams**
> List<WebApiTeam> get All Teams(organization, apiVersion, $mine, $top, $skip, $expandIdentity)



Get a list of all teams.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TeamsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.3' to use this version of the api.
var $mine = true; // bool | If true, then return all teams requesting user is member. Otherwise return all teams user has read access.
var $top = 56; // int | Maximum number of teams to return.
var $skip = 56; // int | Number of teams to skip.
var $expandIdentity = true; // bool | A value indicating whether or not to expand Identity information in the result WebApiTeam object.

try { 
    var result = api_instance.get All Teams(organization, apiVersion, $mine, $top, $skip, $expandIdentity);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->get All Teams: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.3&#39; to use this version of the api. | [default to null]
 **$mine** | **bool**| If true, then return all teams requesting user is member. Otherwise return all teams user has read access. | [optional] [default to null]
 **$top** | **int**| Maximum number of teams to return. | [optional] [default to null]
 **$skip** | **int**| Number of teams to skip. | [optional] [default to null]
 **$expandIdentity** | **bool**| A value indicating whether or not to expand Identity information in the result WebApiTeam object. | [optional] [default to null]

### Return type

[**List<WebApiTeam>**](WebApiTeam.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Team Members With Extended Properties**
> List<TeamMember> get Team Members With Extended Properties(organization, projectId, teamId, apiVersion, $top, $skip)



Get a list of members for a specific team.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TeamsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = projectId_example; // String | The name or ID (GUID) of the team project the team belongs to.
var teamId = teamId_example; // String | The name or ID (GUID) of the team .
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $top = 56; // int | 
var $skip = 56; // int | 

try { 
    var result = api_instance.get Team Members With Extended Properties(organization, projectId, teamId, apiVersion, $top, $skip);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->get Team Members With Extended Properties: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | **String**| The name or ID (GUID) of the team project the team belongs to. | [default to null]
 **teamId** | **String**| The name or ID (GUID) of the team . | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$top** | **int**|  | [optional] [default to null]
 **$skip** | **int**|  | [optional] [default to null]

### Return type

[**List<TeamMember>**](TeamMember.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Teams**
> List<WebApiTeam> get Teams(organization, projectId, apiVersion, $mine, $top, $skip, $expandIdentity)



Get a list of teams.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TeamsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = projectId_example; // String | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var $mine = true; // bool | If true return all the teams requesting user is member, otherwise return all the teams user has read access.
var $top = 56; // int | Maximum number of teams to return.
var $skip = 56; // int | Number of teams to skip.
var $expandIdentity = true; // bool | A value indicating whether or not to expand Identity information in the result WebApiTeam object.

try { 
    var result = api_instance.get Teams(organization, projectId, apiVersion, $mine, $top, $skip, $expandIdentity);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->get Teams: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | **String**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **$mine** | **bool**| If true return all the teams requesting user is member, otherwise return all the teams user has read access. | [optional] [default to null]
 **$top** | **int**| Maximum number of teams to return. | [optional] [default to null]
 **$skip** | **int**| Number of teams to skip. | [optional] [default to null]
 **$expandIdentity** | **bool**| A value indicating whether or not to expand Identity information in the result WebApiTeam object. | [optional] [default to null]

### Return type

[**List<WebApiTeam>**](WebApiTeam.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> WebApiTeam update(organization, projectId, teamId, apiVersion, body)



Update a team's name and/or description.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = TeamsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var projectId = projectId_example; // String | The name or ID (GUID) of the team project containing the team to update.
var teamId = teamId_example; // String | The name of ID of the team to update.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = WebApiTeam(); // WebApiTeam | 

try { 
    var result = api_instance.update(organization, projectId, teamId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **projectId** | **String**| The name or ID (GUID) of the team project containing the team to update. | [default to null]
 **teamId** | **String**| The name of ID of the team to update. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**WebApiTeam**](WebApiTeam.md)|  | 

### Return type

[**WebApiTeam**](WebApiTeam.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

