import 'package:azure_devops_sdk/api.dart';
import 'package:test/test.dart';


/// tests for AttachmentsApi
void main() {
  var instance = AttachmentsApi();

  group('tests for AttachmentsApi', () {
    // Gets a specific attachment.
    //
    //Future<String> callGet(String organization, String project, int buildId, String timelineId, String recordId, String type, String name, String apiVersion) async 
    test('test callGet', () async {
      // TODO
    });

    // Downloads an attachment.
    //
    //Future<String> callGet_0(String organization, String id, String project, String apiVersion, { String fileName, bool download }) async 
    test('test callGet_0', () async {
      // TODO
    });

    // Creates an attachment in the wiki.
    //
    //Future<WikiAttachment> create(String organization, String project, String wikiIdentifier, String name, String apiVersion, String body, { String versionDescriptorVersionOptions, String versionDescriptorVersion, String versionDescriptorVersionType }) async 
    test('test create', () async {
      // TODO
    });

    // Attach a file to a test result.
    //
    //Future<TestAttachmentReference> create Test Result Attachment(String organization, String project, int runId, int testCaseResultId, String apiVersion, TestAttachmentRequestModel body) async 
    test('test create Test Result Attachment', () async {
      // TODO
    });

    // Attach a file to a test run.
    //
    //Future<TestAttachmentReference> create Test Run Attachment(String organization, String project, int runId, String apiVersion, TestAttachmentRequestModel body) async 
    test('test create Test Run Attachment', () async {
      // TODO
    });

    // Uploads an attachment.  On accounts with higher attachment upload limits (>130MB), you will need to use chunked upload. To upload an attachment in multiple chunks, you first need to [**Start a Chunked Upload**](#start_a_chunked_upload) and then follow the example from the **Upload Chunk** section.
    //
    //Future<AttachmentReference> create_0(String organization, String project, String apiVersion, String body, { String fileName, String uploadType, String areaPath }) async 
    test('test create_0', () async {
      // TODO
    });

    // Get a release task attachment.
    //
    //Future<String> get Release Task Attachment Content(String organization, String project, int releaseId, int environmentId, int attemptId, String planId, String timelineId, String recordId, String type, String name, String apiVersion) async 
    test('test get Release Task Attachment Content', () async {
      // TODO
    });

    // Get the release task attachments.
    //
    //Future<List<ReleaseTaskAttachment>> get Release Task Attachments(String organization, String project, int releaseId, int environmentId, int attemptId, String planId, String type, String apiVersion) async 
    test('test get Release Task Attachments', () async {
      // TODO
    });

    // GetTaskAttachmentContent API is deprecated. Use GetReleaseTaskAttachmentContent API instead.
    //
    //Future<String> get Task Attachment Content(String organization, String project, int releaseId, int environmentId, int attemptId, String timelineId, String recordId, String type, String name, String apiVersion) async 
    test('test get Task Attachment Content', () async {
      // TODO
    });

    // GetTaskAttachments API is deprecated. Use GetReleaseTaskAttachments API instead.
    //
    //Future<List<ReleaseTaskAttachment>> get Task Attachments(String organization, String project, int releaseId, int environmentId, int attemptId, String timelineId, String type, String apiVersion) async 
    test('test get Task Attachments', () async {
      // TODO
    });

    // Download a test result attachment by its ID.
    //
    //Future<String> get Test Result Attachment Zip(String organization, String project, int runId, int testCaseResultId, int attachmentId, String apiVersion) async 
    test('test get Test Result Attachment Zip', () async {
      // TODO
    });

    // Get list of test result attachments reference.
    //
    //Future<List<TestAttachment>> get Test Result Attachments(String organization, String project, int runId, int testCaseResultId, String apiVersion) async 
    test('test get Test Result Attachments', () async {
      // TODO
    });

    // Download a test run attachment by its ID.
    //
    //Future<String> get Test Run Attachment Zip(String organization, String project, int runId, int attachmentId, String apiVersion) async 
    test('test get Test Run Attachment Zip', () async {
      // TODO
    });

    // Get list of test run attachments reference.
    //
    //Future<List<TestAttachment>> get Test Run Attachments(String organization, String project, int runId, String apiVersion) async 
    test('test get Test Run Attachments', () async {
      // TODO
    });

    // Gets the list of attachments of a specific type that are associated with a build.
    //
    //Future<List<Attachment>> list(String organization, String project, int buildId, String type, String apiVersion) async 
    test('test list', () async {
      // TODO
    });

    // Uploads an attachment chunk.  Before performing [**Upload a Chunk**](#upload_a_chunk), make sure to have an attachment id returned in **Start a Chunked Upload** example on **Create** section. Specify the byte range of the chunk using Content-Length. For example: \"Content - Length\": \"bytes 0 - 39999 / 50000\" for the first 40000 bytes of a 50000 byte file.
    //
    //Future<AttachmentReference> upload Chunk(String organization, String id, String contentRangeHeader, String project, String apiVersion, String body, { String fileName }) async 
    test('test upload Chunk', () async {
      // TODO
    });

  });
}
