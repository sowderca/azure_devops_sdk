# azure_devops_sdk.model.ReleaseStartMetadata

## Load the model package
```dart
import 'package:azure_devops_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**artifacts** | [**List&lt;ArtifactMetadata&gt;**](ArtifactMetadata.md) | Sets list of artifact to create a release. | [optional] [default to []]
**definitionId** | **int** | Sets definition Id to create a release. | [optional] [default to null]
**description** | **String** | Sets description to create a release. | [optional] [default to null]
**environmentsMetadata** | [**List&lt;ReleaseStartEnvironmentMetadata&gt;**](ReleaseStartEnvironmentMetadata.md) | Sets list of environments meta data. | [optional] [default to []]
**isDraft** | **bool** | Sets &#39;true&#39; to create release in draft mode, &#39;false&#39; otherwise. | [optional] [default to null]
**manualEnvironments** | **List&lt;String&gt;** | Sets list of environments to manual as condition. | [optional] [default to []]
**properties** | [**PropertiesCollection**](PropertiesCollection.md) |  | [optional] [default to null]
**reason** | **String** | Sets reason to create a release. | [optional] [default to null]
**variables** | [**Map&lt;String, ConfigurationVariableValue&gt;**](ConfigurationVariableValue.md) | Sets list of release variables to be overridden at deployment time. | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


