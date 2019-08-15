# azure_devops_sdk.api.ConfigurationsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](ConfigurationsApi.md#callGet) | **GET** /{organization}/{project}/_apis/policy/configurations/{configurationId} | 
[**callGet_0**](ConfigurationsApi.md#callGet_0) | **GET** /{organization}/{project}/_apis/testplan/configurations/{testConfigurationId} | 
[**create**](ConfigurationsApi.md#create) | **POST** /{organization}/{project}/_apis/policy/configurations/{configurationId} | 
[**create_0**](ConfigurationsApi.md#create_0) | **POST** /{organization}/{project}/_apis/testplan/configurations | 
[**delete**](ConfigurationsApi.md#delete) | **DELETE** /{organization}/{project}/_apis/policy/configurations/{configurationId} | 
[**delete_0**](ConfigurationsApi.md#delete_0) | **DELETE** /{organization}/{project}/_apis/testplan/configurations | 
[**list**](ConfigurationsApi.md#list) | **GET** /{organization}/{project}/_apis/policy/configurations | 
[**list_0**](ConfigurationsApi.md#list_0) | **GET** /{organization}/{project}/_apis/testplan/configurations | 
[**update**](ConfigurationsApi.md#update) | **PUT** /{organization}/{project}/_apis/policy/configurations/{configurationId} | 
[**update_0**](ConfigurationsApi.md#update_0) | **PATCH** /{organization}/{project}/_apis/testplan/configurations | 


# **callGet**
> PolicyConfiguration callGet(organization, project, configurationId, apiVersion)



Get a policy configuration by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ConfigurationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var configurationId = 56; // int | ID of the policy configuration
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, configurationId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ConfigurationsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **configurationId** | **int**| ID of the policy configuration | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

[**PolicyConfiguration**](PolicyConfiguration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> TestConfiguration callGet_0(organization, project, testConfigurationId, apiVersion)



Get a test configuration

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ConfigurationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var testConfigurationId = 56; // int | ID of the test configuration to get.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet_0(organization, project, testConfigurationId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling ConfigurationsApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **testConfigurationId** | **int**| ID of the test configuration to get. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**TestConfiguration**](TestConfiguration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> PolicyConfiguration create(organization, project, configurationId, apiVersion, body)



Create a policy configuration of a given policy type.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ConfigurationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var configurationId = 56; // int | 
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = PolicyConfiguration(); // PolicyConfiguration | The policy configuration to create.

try { 
    var result = api_instance.create(organization, project, configurationId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ConfigurationsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **configurationId** | **int**|  | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**PolicyConfiguration**](PolicyConfiguration.md)| The policy configuration to create. | 

### Return type

[**PolicyConfiguration**](PolicyConfiguration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_0**
> TestConfiguration create_0(organization, project, apiVersion, body)



Create a test configuration.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ConfigurationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TestConfigurationCreateUpdateParameters(); // TestConfigurationCreateUpdateParameters | TestConfigurationCreateUpdateParameters

try { 
    var result = api_instance.create_0(organization, project, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ConfigurationsApi->create_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestConfigurationCreateUpdateParameters**](TestConfigurationCreateUpdateParameters.md)| TestConfigurationCreateUpdateParameters | 

### Return type

[**TestConfiguration**](TestConfiguration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(organization, project, configurationId, apiVersion)



Delete a policy configuration by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ConfigurationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var configurationId = 56; // int | ID of the policy configuration to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.

try { 
    api_instance.delete(organization, project, configurationId, apiVersion);
} catch (e) {
    print("Exception when calling ConfigurationsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **configurationId** | **int**| ID of the policy configuration to delete. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_0**
> delete_0(organization, project, testConfiguartionId, apiVersion)



Delete a test configuration by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ConfigurationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var testConfiguartionId = 56; // int | ID of the test configuration to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    api_instance.delete_0(organization, project, testConfiguartionId, apiVersion);
} catch (e) {
    print("Exception when calling ConfigurationsApi->delete_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **testConfiguartionId** | **int**| ID of the test configuration to delete. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<PolicyConfiguration> list(organization, project, apiVersion, scope, policyType)



Get a list of policy configurations in a project.  The 'scope' parameter for this API should not be used, except for legacy compatability reasons. It returns specifically scoped policies and does not support heirarchical nesting. Instead, use the /_apis/git/policy/configurations API, which provides first class scope filtering support.  The optional `policyType` parameter can be used to filter the set of policies returned from this method.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ConfigurationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var scope = scope_example; // String | [Provided for legacy reasons] The scope on which a subset of policies is defined.
var policyType = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter returned policies to only this type

try { 
    var result = api_instance.list(organization, project, apiVersion, scope, policyType);
    print(result);
} catch (e) {
    print("Exception when calling ConfigurationsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **scope** | **String**| [Provided for legacy reasons] The scope on which a subset of policies is defined. | [optional] [default to null]
 **policyType** | [**String**](.md)| Filter returned policies to only this type | [optional] [default to null]

### Return type

[**List<PolicyConfiguration>**](PolicyConfiguration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_0**
> List<TestConfiguration> list_0(organization, project, apiVersion, continuationToken)



Get a list of test configurations.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ConfigurationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var continuationToken = continuationToken_example; // String | If the list of configurations returned is not complete, a continuation token to query next batch of configurations is included in the response header as \"x-ms-continuationtoken\". Omit this parameter to get the first batch of test configurations.

try { 
    var result = api_instance.list_0(organization, project, apiVersion, continuationToken);
    print(result);
} catch (e) {
    print("Exception when calling ConfigurationsApi->list_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **continuationToken** | **String**| If the list of configurations returned is not complete, a continuation token to query next batch of configurations is included in the response header as \&quot;x-ms-continuationtoken\&quot;. Omit this parameter to get the first batch of test configurations. | [optional] [default to null]

### Return type

[**List<TestConfiguration>**](TestConfiguration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> PolicyConfiguration update(organization, project, configurationId, apiVersion, body)



Update a policy configuration by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ConfigurationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var configurationId = 56; // int | ID of the existing policy configuration to be updated.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = PolicyConfiguration(); // PolicyConfiguration | The policy configuration to update.

try { 
    var result = api_instance.update(organization, project, configurationId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ConfigurationsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **configurationId** | **int**| ID of the existing policy configuration to be updated. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | [**PolicyConfiguration**](PolicyConfiguration.md)| The policy configuration to update. | 

### Return type

[**PolicyConfiguration**](PolicyConfiguration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_0**
> TestConfiguration update_0(organization, project, testConfiguartionId, apiVersion, body)



Update a test configuration by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = ConfigurationsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var testConfiguartionId = 56; // int | ID of the test configuration to update.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TestConfigurationCreateUpdateParameters(); // TestConfigurationCreateUpdateParameters | TestConfigurationCreateUpdateParameters

try { 
    var result = api_instance.update_0(organization, project, testConfiguartionId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling ConfigurationsApi->update_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **testConfiguartionId** | **int**| ID of the test configuration to update. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestConfigurationCreateUpdateParameters**](TestConfigurationCreateUpdateParameters.md)| TestConfigurationCreateUpdateParameters | 

### Return type

[**TestConfiguration**](TestConfiguration.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

