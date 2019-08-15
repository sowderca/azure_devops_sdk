# azure_devops_sdk.model.Release

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**ReferenceLinks**](ReferenceLinks.md) |  | [optional] [default to null]
**artifacts** | [**List&lt;Artifact&gt;**](Artifact.md) | Gets or sets the list of artifacts. | [optional] [default to []]
**comment** | **String** | Gets or sets comment. | [optional] [default to null]
**createdBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**createdOn** | [**DateTime**](DateTime.md) | Gets date on which it got created. | [optional] [default to null]
**definitionSnapshotRevision** | **int** | Gets revision number of definition snapshot. | [optional] [default to null]
**description** | **String** | Gets or sets description of release. | [optional] [default to null]
**environments** | [**List&lt;ReleaseEnvironment&gt;**](ReleaseEnvironment.md) | Gets list of environments. | [optional] [default to []]
**id** | **int** | Gets the unique identifier of this field. | [optional] [default to null]
**keepForever** | **bool** | Whether to exclude the release from retention policies. | [optional] [default to null]
**logsContainerUrl** | **String** | Gets logs container url. | [optional] [default to null]
**modifiedBy** | [**IdentityRef**](IdentityRef.md) |  | [optional] [default to null]
**modifiedOn** | [**DateTime**](DateTime.md) | Gets date on which it got modified. | [optional] [default to null]
**name** | **String** | Gets name. | [optional] [default to null]
**poolName** | **String** | Gets pool name. | [optional] [default to null]
**projectReference** | [**ProjectReference**](ProjectReference.md) |  | [optional] [default to null]
**properties** | [**PropertiesCollection**](PropertiesCollection.md) |  | [optional] [default to null]
**reason** | **String** | Gets reason of release. | [optional] [default to null]
**releaseDefinition** | [**ReleaseDefinitionShallowReference**](ReleaseDefinitionShallowReference.md) |  | [optional] [default to null]
**releaseDefinitionRevision** | **int** | Gets or sets the release definition revision. | [optional] [default to null]
**releaseNameFormat** | **String** | Gets release name format. | [optional] [default to null]
**status** | **String** | Gets status. | [optional] [default to null]
**tags** | **List&lt;String&gt;** | Gets or sets list of tags. | [optional] [default to []]
**triggeringArtifactAlias** | **String** |  | [optional] [default to null]
**variableGroups** | [**List&lt;VariableGroup&gt;**](VariableGroup.md) | Gets the list of variable groups. | [optional] [default to []]
**variables** | [**Map&lt;String, ConfigurationVariableValue&gt;**](ConfigurationVariableValue.md) | Gets or sets the dictionary of variables. | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


