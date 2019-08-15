# azure_devops_sdk.api.RulesApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](RulesApi.md#add) | **POST** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/rules | 
[**callGet**](RulesApi.md#callGet) | **GET** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/rules/{ruleId} | 
[**delete**](RulesApi.md#delete) | **DELETE** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/rules/{ruleId} | 
[**list**](RulesApi.md#list) | **GET** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/rules | 
[**update**](RulesApi.md#update) | **PUT** /{organization}/_apis/work/processes/{processId}/workItemTypes/{witRefName}/rules/{ruleId} | 


# **add**
> ProcessRule add(organization, processId, witRefName, apiVersion, body)



Adds a rule to work item type in the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RulesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = CreateProcessRuleRequest(); // CreateProcessRuleRequest | 

try { 
    var result = api_instance.add(organization, processId, witRefName, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling RulesApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**CreateProcessRuleRequest**](CreateProcessRuleRequest.md)|  | 

### Return type

[**ProcessRule**](ProcessRule.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> ProcessRule callGet(organization, processId, witRefName, ruleId, apiVersion)



Returns a single rule in the work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RulesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var ruleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the rule
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, processId, witRefName, ruleId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RulesApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **ruleId** | [**String**](.md)| The ID of the rule | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

[**ProcessRule**](ProcessRule.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, processId, witRefName, ruleId, apiVersion)



Removes a rule from the work item type in the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RulesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var ruleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the rule
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    api_instance.delete(organization, processId, witRefName, ruleId, apiVersion);
} catch (e) {
    print("Exception when calling RulesApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **ruleId** | [**String**](.md)| The ID of the rule | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<ProcessRule> list(organization, processId, witRefName, apiVersion)



Returns a list of all rules in the work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RulesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.list(organization, processId, witRefName, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling RulesApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

[**List<ProcessRule>**](ProcessRule.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> ProcessRule update(organization, processId, witRefName, ruleId, apiVersion, body)



Updates a rule in the work item type of the process.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = RulesApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var processId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the process
var witRefName = witRefName_example; // String | The reference name of the work item type
var ruleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the rule
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.
var body = UpdateProcessRuleRequest(); // UpdateProcessRuleRequest | 

try { 
    var result = api_instance.update(organization, processId, witRefName, ruleId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling RulesApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **processId** | [**String**](.md)| The ID of the process | [default to null]
 **witRefName** | **String**| The reference name of the work item type | [default to null]
 **ruleId** | [**String**](.md)| The ID of the rule | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]
 **body** | [**UpdateProcessRuleRequest**](UpdateProcessRuleRequest.md)|  | 

### Return type

[**ProcessRule**](ProcessRule.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

