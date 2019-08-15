# azure_devops_sdk.api.GroupEntitlementsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](GroupEntitlementsApi.md#add) | **POST** /{organization}/_apis/groupentitlements | 
[**callGet**](GroupEntitlementsApi.md#callGet) | **GET** /{organization}/_apis/groupentitlements/{groupId} | 
[**delete**](GroupEntitlementsApi.md#delete) | **DELETE** /{organization}/_apis/groupentitlements/{groupId} | 
[**list**](GroupEntitlementsApi.md#list) | **GET** /{organization}/_apis/groupentitlements | 
[**update**](GroupEntitlementsApi.md#update) | **PATCH** /{organization}/_apis/groupentitlements/{groupId} | 


# **add**
> GroupEntitlementOperationReference add(organization, apiVersion, body, ruleOption)



Create a group entitlement with license rule, extension rule.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupEntitlementsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = GroupEntitlement(); // GroupEntitlement | GroupEntitlement object specifying License Rule, Extensions Rule for the group. Based on the rules the members of the group will be given licenses and extensions. The Group Entitlement can be used to add the group to another project level groups
var ruleOption = ruleOption_example; // String | RuleOption [ApplyGroupRule/TestApplyGroupRule] - specifies if the rules defined in group entitlement should be created and applied to itâs members (default option) or just be tested

try { 
    var result = api_instance.add(organization, apiVersion, body, ruleOption);
    print(result);
} catch (e) {
    print("Exception when calling GroupEntitlementsApi->add: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**GroupEntitlement**](GroupEntitlement.md)| GroupEntitlement object specifying License Rule, Extensions Rule for the group. Based on the rules the members of the group will be given licenses and extensions. The Group Entitlement can be used to add the group to another project level groups | 
 **ruleOption** | **String**| RuleOption [ApplyGroupRule/TestApplyGroupRule] - specifies if the rules defined in group entitlement should be created and applied to itâs members (default option) or just be tested | [optional] [default to null]

### Return type

[**GroupEntitlementOperationReference**](GroupEntitlementOperationReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet**
> GroupEntitlement callGet(organization, groupId, apiVersion)



Get a group entitlement.  If the group entitlement does not exist, returns null.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupEntitlementsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the group.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, groupId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling GroupEntitlementsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **groupId** | [**String**](.md)| ID of the group. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**GroupEntitlement**](GroupEntitlement.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> GroupEntitlementOperationReference delete(organization, groupId, apiVersion, ruleOption, removeGroupMembership)



Delete a group entitlement.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupEntitlementsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the group to delete.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var ruleOption = ruleOption_example; // String | RuleOption [ApplyGroupRule/TestApplyGroupRule] - specifies if the rules defined in group entitlement should be deleted and the changes are applied to itâs members (default option) or just be tested
var removeGroupMembership = true; // bool | Optional parameter that specifies whether the group with the given ID should be removed from all other groups

try { 
    var result = api_instance.delete(organization, groupId, apiVersion, ruleOption, removeGroupMembership);
    print(result);
} catch (e) {
    print("Exception when calling GroupEntitlementsApi->delete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **groupId** | [**String**](.md)| ID of the group to delete. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **ruleOption** | **String**| RuleOption [ApplyGroupRule/TestApplyGroupRule] - specifies if the rules defined in group entitlement should be deleted and the changes are applied to itâs members (default option) or just be tested | [optional] [default to null]
 **removeGroupMembership** | **bool**| Optional parameter that specifies whether the group with the given ID should be removed from all other groups | [optional] [default to null]

### Return type

[**GroupEntitlementOperationReference**](GroupEntitlementOperationReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<GroupEntitlement> list(organization, apiVersion)



Get the group entitlements for an account.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupEntitlementsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.list(organization, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling GroupEntitlementsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<GroupEntitlement>**](GroupEntitlement.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> GroupEntitlementOperationReference update(organization, groupId, apiVersion, body, ruleOption)



Update entitlements (License Rule, Extensions Rule, Project memberships etc.) for a group.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = GroupEntitlementsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var groupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the group.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = JsonPatchDocument(); // JsonPatchDocument | JsonPatchDocument containing the operations to perform on the group.
var ruleOption = ruleOption_example; // String | RuleOption [ApplyGroupRule/TestApplyGroupRule] - specifies if the rules defined in group entitlement should be updated and the changes are applied to itâs members (default option) or just be tested

try { 
    var result = api_instance.update(organization, groupId, apiVersion, body, ruleOption);
    print(result);
} catch (e) {
    print("Exception when calling GroupEntitlementsApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **groupId** | [**String**](.md)| ID of the group. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**JsonPatchDocument**](JsonPatchDocument.md)| JsonPatchDocument containing the operations to perform on the group. | 
 **ruleOption** | **String**| RuleOption [ApplyGroupRule/TestApplyGroupRule] - specifies if the rules defined in group entitlement should be updated and the changes are applied to itâs members (default option) or just be tested | [optional] [default to null]

### Return type

[**GroupEntitlementOperationReference**](GroupEntitlementOperationReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

