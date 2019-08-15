# azure_devops_sdk.model.InstalledExtension

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**baseUri** | **String** | Uri used as base for other relative uri&#39;s defined in extension | [optional] [default to null]
**constraints** | [**List&lt;ContributionConstraint&gt;**](ContributionConstraint.md) | List of shared constraints defined by this extension | [optional] [default to []]
**contributions** | [**List&lt;Contribution&gt;**](Contribution.md) | List of contributions made by this extension | [optional] [default to []]
**contributionTypes** | [**List&lt;ContributionType&gt;**](ContributionType.md) | List of contribution types defined by this extension | [optional] [default to []]
**demands** | **List&lt;String&gt;** | List of explicit demands required by this extension | [optional] [default to []]
**eventCallbacks** | [**ExtensionEventCallbackCollection**](ExtensionEventCallbackCollection.md) |  | [optional] [default to null]
**fallbackBaseUri** | **String** | Secondary location that can be used as base for other relative uri&#39;s defined in extension | [optional] [default to null]
**language** | **String** | Language Culture Name set by the Gallery | [optional] [default to null]
**licensing** | [**ExtensionLicensing**](ExtensionLicensing.md) |  | [optional] [default to null]
**manifestVersion** | **double** | Version of the extension manifest format/content | [optional] [default to null]
**restrictedTo** | **List&lt;String&gt;** | Default user claims applied to all contributions (except the ones which have been specified restrictedTo explicitly) to control the visibility of a contribution. | [optional] [default to []]
**scopes** | **List&lt;String&gt;** | List of all oauth scopes required by this extension | [optional] [default to []]
**serviceInstanceType** | **String** | The ServiceInstanceType(Guid) of the VSTS service that must be available to an account in order for the extension to be installed | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


