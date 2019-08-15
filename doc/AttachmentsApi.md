# azure_devops_sdk.api.AttachmentsApi

## Load the API package
```dart
import 'package:azure_devops_sdk/api.dart';
```

All URIs are relative to *https://app.vssps.visualstudio.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callGet**](AttachmentsApi.md#callGet) | **GET** /{organization}/{project}/_apis/build/builds/{buildId}/{timelineId}/{recordId}/attachments/{type}/{name} | 
[**callGet_0**](AttachmentsApi.md#callGet_0) | **GET** /{organization}/{project}/_apis/wit/attachments/{id} | 
[**create**](AttachmentsApi.md#create) | **PUT** /{organization}/{project}/_apis/wiki/wikis/{wikiIdentifier}/attachments | 
[**create Test Result Attachment**](AttachmentsApi.md#create Test Result Attachment) | **POST** /{organization}/{project}/_apis/test/Runs/{runId}/Results/{testCaseResultId}/attachments | 
[**create Test Run Attachment**](AttachmentsApi.md#create Test Run Attachment) | **POST** /{organization}/{project}/_apis/test/Runs/{runId}/attachments | 
[**create_0**](AttachmentsApi.md#create_0) | **POST** /{organization}/{project}/_apis/wit/attachments | 
[**get Release Task Attachment Content**](AttachmentsApi.md#get Release Task Attachment Content) | **GET** /{organization}/{project}/_apis/release/releases/{releaseId}/environments/{environmentId}/attempts/{attemptId}/plan/{planId}/timelines/{timelineId}/records/{recordId}/attachments/{type}/{name} | 
[**get Release Task Attachments**](AttachmentsApi.md#get Release Task Attachments) | **GET** /{organization}/{project}/_apis/release/releases/{releaseId}/environments/{environmentId}/attempts/{attemptId}/plan/{planId}/attachments/{type} | 
[**get Task Attachment Content**](AttachmentsApi.md#get Task Attachment Content) | **GET** /{organization}/{project}/_apis/release/releases/{releaseId}/environments/{environmentId}/attempts/{attemptId}/timelines/{timelineId}/records/{recordId}/attachments/{type}/{name} | 
[**get Task Attachments**](AttachmentsApi.md#get Task Attachments) | **GET** /{organization}/{project}/_apis/release/releases/{releaseId}/environments/{environmentId}/attempts/{attemptId}/timelines/{timelineId}/attachments/{type} | 
[**get Test Result Attachment Zip**](AttachmentsApi.md#get Test Result Attachment Zip) | **GET** /{organization}/{project}/_apis/test/Runs/{runId}/Results/{testCaseResultId}/attachments/{attachmentId} | 
[**get Test Result Attachments**](AttachmentsApi.md#get Test Result Attachments) | **GET** /{organization}/{project}/_apis/test/Runs/{runId}/Results/{testCaseResultId}/attachments | 
[**get Test Run Attachment Zip**](AttachmentsApi.md#get Test Run Attachment Zip) | **GET** /{organization}/{project}/_apis/test/Runs/{runId}/attachments/{attachmentId} | 
[**get Test Run Attachments**](AttachmentsApi.md#get Test Run Attachments) | **GET** /{organization}/{project}/_apis/test/Runs/{runId}/attachments | 
[**list**](AttachmentsApi.md#list) | **GET** /{organization}/{project}/_apis/build/builds/{buildId}/attachments/{type} | 
[**upload Chunk**](AttachmentsApi.md#upload Chunk) | **PUT** /{organization}/{project}/_apis/wit/attachments/{id} | 


# **callGet**
> String callGet(organization, project, buildId, timelineId, recordId, type, name, apiVersion)



Gets a specific attachment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var timelineId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the timeline.
var recordId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the timeline record.
var type = type_example; // String | The type of the attachment.
var name = name_example; // String | The name of the attachment.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.callGet(organization, project, buildId, timelineId, recordId, type, name, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->callGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **timelineId** | [**String**](.md)| The ID of the timeline. | [default to null]
 **recordId** | [**String**](.md)| The ID of the timeline record. | [default to null]
 **type** | **String**| The type of the attachment. | [default to null]
 **name** | **String**| The name of the attachment. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callGet_0**
> String callGet_0(organization, id, project, apiVersion, fileName, download)



Downloads an attachment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Attachment ID
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var fileName = fileName_example; // String | Name of the file
var download = true; // bool | If set to <c>true</c> always download attachment

try { 
    var result = api_instance.callGet_0(organization, id, project, apiVersion, fileName, download);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->callGet_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | [**String**](.md)| Attachment ID | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **fileName** | **String**| Name of the file | [optional] [default to null]
 **download** | **bool**| If set to &lt;c&gt;true&lt;/c&gt; always download attachment | [optional] [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> WikiAttachment create(organization, project, wikiIdentifier, name, apiVersion, body, versionDescriptorVersionOptions, versionDescriptorVersion, versionDescriptorVersionType)



Creates an attachment in the wiki.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var wikiIdentifier = wikiIdentifier_example; // String | Wiki Id or name.
var name = name_example; // String | Wiki attachment name.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = String(); // String | Stream to upload
var versionDescriptorVersionOptions = versionDescriptorVersionOptions_example; // String | Version options - Specify additional modifiers to version (e.g Previous)
var versionDescriptorVersion = versionDescriptorVersion_example; // String | Version string identifier (name of tag/branch, SHA1 of commit)
var versionDescriptorVersionType = versionDescriptorVersionType_example; // String | Version type (branch, tag, or commit). Determines how Id is interpreted

try { 
    var result = api_instance.create(organization, project, wikiIdentifier, name, apiVersion, body, versionDescriptorVersionOptions, versionDescriptorVersion, versionDescriptorVersionType);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->create: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **wikiIdentifier** | **String**| Wiki Id or name. | [default to null]
 **name** | **String**| Wiki attachment name. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | **String**| Stream to upload | 
 **versionDescriptorVersionOptions** | **String**| Version options - Specify additional modifiers to version (e.g Previous) | [optional] [default to null]
 **versionDescriptorVersion** | **String**| Version string identifier (name of tag/branch, SHA1 of commit) | [optional] [default to null]
 **versionDescriptorVersionType** | **String**| Version type (branch, tag, or commit). Determines how Id is interpreted | [optional] [default to null]

### Return type

[**WikiAttachment**](WikiAttachment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create Test Result Attachment**
> TestAttachmentReference create Test Result Attachment(organization, project, runId, testCaseResultId, apiVersion, body)



Attach a file to a test result.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the test run that contains the result.
var testCaseResultId = 56; // int | ID of the test result against which attachment has to be uploaded.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TestAttachmentRequestModel(); // TestAttachmentRequestModel | Attachment details TestAttachmentRequestModel

try { 
    var result = api_instance.create Test Result Attachment(organization, project, runId, testCaseResultId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->create Test Result Attachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the test run that contains the result. | [default to null]
 **testCaseResultId** | **int**| ID of the test result against which attachment has to be uploaded. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestAttachmentRequestModel**](TestAttachmentRequestModel.md)| Attachment details TestAttachmentRequestModel | 

### Return type

[**TestAttachmentReference**](TestAttachmentReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create Test Run Attachment**
> TestAttachmentReference create Test Run Attachment(organization, project, runId, apiVersion, body)



Attach a file to a test run.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the test run against which attachment has to be uploaded.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.
var body = TestAttachmentRequestModel(); // TestAttachmentRequestModel | Attachment details TestAttachmentRequestModel

try { 
    var result = api_instance.create Test Run Attachment(organization, project, runId, apiVersion, body);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->create Test Run Attachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the test run against which attachment has to be uploaded. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]
 **body** | [**TestAttachmentRequestModel**](TestAttachmentRequestModel.md)| Attachment details TestAttachmentRequestModel | 

### Return type

[**TestAttachmentReference**](TestAttachmentReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_0**
> AttachmentReference create_0(organization, project, apiVersion, body, fileName, uploadType, areaPath)



Uploads an attachment.  On accounts with higher attachment upload limits (>130MB), you will need to use chunked upload. To upload an attachment in multiple chunks, you first need to [**Start a Chunked Upload**](#start_a_chunked_upload) and then follow the example from the **Upload Chunk** section.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = String(); // String | Stream to upload
var fileName = fileName_example; // String | The name of the file
var uploadType = uploadType_example; // String | Attachment upload type: Simple or Chunked
var areaPath = areaPath_example; // String | Target project Area Path

try { 
    var result = api_instance.create_0(organization, project, apiVersion, body, fileName, uploadType, areaPath);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->create_0: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | **String**| Stream to upload | 
 **fileName** | **String**| The name of the file | [optional] [default to null]
 **uploadType** | **String**| Attachment upload type: Simple or Chunked | [optional] [default to null]
 **areaPath** | **String**| Target project Area Path | [optional] [default to null]

### Return type

[**AttachmentReference**](AttachmentReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Release Task Attachment Content**
> String get Release Task Attachment Content(organization, project, releaseId, environmentId, attemptId, planId, timelineId, recordId, type, name, apiVersion)



Get a release task attachment.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release.
var environmentId = 56; // int | Id of the release environment.
var attemptId = 56; // int | Attempt number of deployment.
var planId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Plan Id of the deploy phase.
var timelineId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Timeline Id of the task.
var recordId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Record Id of attachment.
var type = type_example; // String | Type of the attachment.
var name = name_example; // String | Name of the attachment.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Release Task Attachment Content(organization, project, releaseId, environmentId, attemptId, planId, timelineId, recordId, type, name, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->get Release Task Attachment Content: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release. | [default to null]
 **environmentId** | **int**| Id of the release environment. | [default to null]
 **attemptId** | **int**| Attempt number of deployment. | [default to null]
 **planId** | [**String**](.md)| Plan Id of the deploy phase. | [default to null]
 **timelineId** | [**String**](.md)| Timeline Id of the task. | [default to null]
 **recordId** | [**String**](.md)| Record Id of attachment. | [default to null]
 **type** | **String**| Type of the attachment. | [default to null]
 **name** | **String**| Name of the attachment. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Release Task Attachments**
> List<ReleaseTaskAttachment> get Release Task Attachments(organization, project, releaseId, environmentId, attemptId, planId, type, apiVersion)



Get the release task attachments.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release.
var environmentId = 56; // int | Id of the release environment.
var attemptId = 56; // int | Attempt number of deployment.
var planId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Plan Id of the deploy phase.
var type = type_example; // String | Type of the attachment.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Release Task Attachments(organization, project, releaseId, environmentId, attemptId, planId, type, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->get Release Task Attachments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release. | [default to null]
 **environmentId** | **int**| Id of the release environment. | [default to null]
 **attemptId** | **int**| Attempt number of deployment. | [default to null]
 **planId** | [**String**](.md)| Plan Id of the deploy phase. | [default to null]
 **type** | **String**| Type of the attachment. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<ReleaseTaskAttachment>**](ReleaseTaskAttachment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Task Attachment Content**
> String get Task Attachment Content(organization, project, releaseId, environmentId, attemptId, timelineId, recordId, type, name, apiVersion)



GetTaskAttachmentContent API is deprecated. Use GetReleaseTaskAttachmentContent API instead.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release.
var environmentId = 56; // int | Id of the release environment.
var attemptId = 56; // int | Attempt number of deployment.
var timelineId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Timeline Id of the task.
var recordId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Record Id of attachment.
var type = type_example; // String | Type of the attachment.
var name = name_example; // String | Name of the attachment.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Task Attachment Content(organization, project, releaseId, environmentId, attemptId, timelineId, recordId, type, name, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->get Task Attachment Content: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release. | [default to null]
 **environmentId** | **int**| Id of the release environment. | [default to null]
 **attemptId** | **int**| Attempt number of deployment. | [default to null]
 **timelineId** | [**String**](.md)| Timeline Id of the task. | [default to null]
 **recordId** | [**String**](.md)| Record Id of attachment. | [default to null]
 **type** | **String**| Type of the attachment. | [default to null]
 **name** | **String**| Name of the attachment. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Task Attachments**
> List<ReleaseTaskAttachment> get Task Attachments(organization, project, releaseId, environmentId, attemptId, timelineId, type, apiVersion)



GetTaskAttachments API is deprecated. Use GetReleaseTaskAttachments API instead.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var releaseId = 56; // int | Id of the release.
var environmentId = 56; // int | Id of the release environment.
var attemptId = 56; // int | Attempt number of deployment.
var timelineId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Timeline Id of the task.
var type = type_example; // String | Type of the attachment.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Task Attachments(organization, project, releaseId, environmentId, attemptId, timelineId, type, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->get Task Attachments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **releaseId** | **int**| Id of the release. | [default to null]
 **environmentId** | **int**| Id of the release environment. | [default to null]
 **attemptId** | **int**| Attempt number of deployment. | [default to null]
 **timelineId** | [**String**](.md)| Timeline Id of the task. | [default to null]
 **type** | **String**| Type of the attachment. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<ReleaseTaskAttachment>**](ReleaseTaskAttachment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Test Result Attachment Zip**
> String get Test Result Attachment Zip(organization, project, runId, testCaseResultId, attachmentId, apiVersion)



Download a test result attachment by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the test run that contains the testCaseResultId.
var testCaseResultId = 56; // int | ID of the test result whose attachment has to be downloaded.
var attachmentId = 56; // int | ID of the test result attachment to be downloaded.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Test Result Attachment Zip(organization, project, runId, testCaseResultId, attachmentId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->get Test Result Attachment Zip: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the test run that contains the testCaseResultId. | [default to null]
 **testCaseResultId** | **int**| ID of the test result whose attachment has to be downloaded. | [default to null]
 **attachmentId** | **int**| ID of the test result attachment to be downloaded. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Test Result Attachments**
> List<TestAttachment> get Test Result Attachments(organization, project, runId, testCaseResultId, apiVersion)



Get list of test result attachments reference.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the test run that contains the result.
var testCaseResultId = 56; // int | ID of the test result.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Test Result Attachments(organization, project, runId, testCaseResultId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->get Test Result Attachments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the test run that contains the result. | [default to null]
 **testCaseResultId** | **int**| ID of the test result. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<TestAttachment>**](TestAttachment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Test Run Attachment Zip**
> String get Test Run Attachment Zip(organization, project, runId, attachmentId, apiVersion)



Download a test run attachment by its ID.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the test run whose attachment has to be downloaded.
var attachmentId = 56; // int | ID of the test run attachment to be downloaded.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Test Run Attachment Zip(organization, project, runId, attachmentId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->get Test Run Attachment Zip: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the test run whose attachment has to be downloaded. | [default to null]
 **attachmentId** | **int**| ID of the test run attachment to be downloaded. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get Test Run Attachments**
> List<TestAttachment> get Test Run Attachments(organization, project, runId, apiVersion)



Get list of test run attachments reference.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var runId = 56; // int | ID of the test run.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.1' to use this version of the api.

try { 
    var result = api_instance.get Test Run Attachments(organization, project, runId, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->get Test Run Attachments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **runId** | **int**| ID of the test run. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.1&#39; to use this version of the api. | [default to null]

### Return type

[**List<TestAttachment>**](TestAttachment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list**
> List<Attachment> list(organization, project, buildId, type, apiVersion)



Gets the list of attachments of a specific type that are associated with a build.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var project = project_example; // String | Project ID or project name
var buildId = 56; // int | The ID of the build.
var type = type_example; // String | The type of attachment.
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1-preview.2' to use this version of the api.

try { 
    var result = api_instance.list(organization, project, buildId, type, apiVersion);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->list: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **buildId** | **int**| The ID of the build. | [default to null]
 **type** | **String**| The type of attachment. | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1-preview.2&#39; to use this version of the api. | [default to null]

### Return type

[**List<Attachment>**](Attachment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upload Chunk**
> AttachmentReference upload Chunk(organization, id, contentRangeHeader, project, apiVersion, body, fileName)



Uploads an attachment chunk.  Before performing [**Upload a Chunk**](#upload_a_chunk), make sure to have an attachment id returned in **Start a Chunked Upload** example on **Create** section. Specify the byte range of the chunk using Content-Length. For example: \"Content - Length\": \"bytes 0 - 39999 / 50000\" for the first 40000 bytes of a 50000 byte file.

### Example 
```dart
import 'package:azure_devops_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2
//defaultApiClient.getAuthentication<OAuth>('oauth2').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = AttachmentsApi();
var organization = organization_example; // String | The name of the Azure DevOps organization.
var id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The id of the attachment
var contentRangeHeader = contentRangeHeader_example; // String | starting and ending byte positions for chunked file upload, format is \"Content-Range\": \"bytes 0-10000/50000\"
var project = project_example; // String | Project ID or project name
var apiVersion = apiVersion_example; // String | Version of the API to use.  This should be set to '5.1' to use this version of the api.
var body = String(); // String | Stream to upload
var fileName = fileName_example; // String | 

try { 
    var result = api_instance.upload Chunk(organization, id, contentRangeHeader, project, apiVersion, body, fileName);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentsApi->upload Chunk: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| The name of the Azure DevOps organization. | [default to null]
 **id** | [**String**](.md)| The id of the attachment | [default to null]
 **contentRangeHeader** | **String**| starting and ending byte positions for chunked file upload, format is \&quot;Content-Range\&quot;: \&quot;bytes 0-10000/50000\&quot; | [default to null]
 **project** | **String**| Project ID or project name | [default to null]
 **apiVersion** | **String**| Version of the API to use.  This should be set to &#39;5.1&#39; to use this version of the api. | [default to null]
 **body** | **String**| Stream to upload | 
 **fileName** | **String**|  | [optional] [default to null]

### Return type

[**AttachmentReference**](AttachmentReference.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

