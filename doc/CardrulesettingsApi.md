# azure_devops_sdk.api.CardrulesettingsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](CardrulesettingsApi.md#callGet) | **GET** /{organization}/{project}/{team}/_apis/work/boards/{board}/cardrulesettings | 
[**update Board Card Rule Settings**](CardrulesettingsApi.md#update Board Card Rule Settings) | **PATCH** /{organization}/{project}/{team}/_apis/work/boards/{board}/cardrulesettings | 
[**update Taskboard Card Rule Settings**](CardrulesettingsApi.md#update Taskboard Card Rule Settings) | **PATCH** /{organization}/{project}/{team}/_apis/work/taskboard/cardrulesettings | 


# **callGet**
> BoardCardRuleSettings callGet(organization, project, board, team, apiVersion)



Get board card Rule settings for the board id or board by name

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CardrulesettingsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var board = board_example; // String | 
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, board, team, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling CardrulesettingsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **board** | **String**|  | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**BoardCardRuleSettings**](BoardCardRuleSettings.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Board Card Rule Settings**
> BoardCardRuleSettings update Board Card Rule Settings(organization, project, board, team, apiVersion, body)



Update board card Rule settings for the board id or board by name

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = CardrulesettingsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var board = board_example; // String | 
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = BoardCardRuleSettings(); // BoardCardRuleSettings | 

try { 
    var result = api_instance.update Board Card Rule Settings(organization, project, board, team, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling CardrulesettingsApi->update Board Card Rule Settings: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **board** | **String**|  | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**BoardCardRuleSettings**](BoardCardRuleSettings.md)|  | 

### Return type

[**BoardCardRuleSettings**](BoardCardRuleSettings.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update Taskboard Card Rule Settings**
> update Taskboard Card Rule Settings(organization, project, team, apiVersion, body)



Update taskboard card Rule settings

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure HTTP basic authorization: accessToken
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('accessToken').password = 'YOUR_PASSWORD';

var api_instance = CardrulesettingsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var team = team_example; // String | Team ID or team name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = BoardCardRuleSettings(); // BoardCardRuleSettings | 

try { 
    api_instance.update Taskboard Card Rule Settings(organization, project, team, apiVersion, body);
} catch (e) {
    print("Exception when calling CardrulesettingsApi->update Taskboard Card Rule Settings: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **team** | **String**| Team ID or team name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**BoardCardRuleSettings**](BoardCardRuleSettings.md)|  | 

### Return type

void (empty response body)

### Authorization

[accessToken](../README.md#accessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

