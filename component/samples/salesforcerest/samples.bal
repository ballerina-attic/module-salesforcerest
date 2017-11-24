import org.wso2.ballerina.connectors.salesforcerest;
import ballerina.net.http;

function main (string[] args) {

    endpoint<salesforcerest:ClientConnector> salesforceClient {
        create salesforcerest:ClientConnector(args[1], args[2], args[3], args[4], args[5], args[6]);
    }

    http:Response response = {};
    json JSONResponse;

    if (args[0] == "describeGlobal") {
        println("-----Calling describeGlobal action-----");
        response = salesforceClient.describeGlobal (args[7]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "sObjectDescribe") {
        println("-----Calling sObjectDescribe action-----");
        response = salesforceClient.sObjectDescribe (args[8], args[7]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "listAvailableApiVersion") {
        println("-----Calling listAvailableApiVersion action-----");
        response = salesforceClient.listAvailableApiVersion ();
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "listOrganizationLimits") {
        println("-----Calling listOrganizationLimits action-----");
        response = salesforceClient.listOrganizationLimits (args[7]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "listResourcesByApiVersion") {
        println("-----Calling listResourcesByApiVersion action-----");
        response = salesforceClient.listResourcesByApiVersion (args[7]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "sObjectBasicInfo") {
        println("-----Calling sObjectBasicInfo action-----");
        response = salesforceClient.sObjectBasicInfo (args[8], args[7]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "sObjectGetDeleted") {
        println("-----Calling sObjectGetDeleted action-----");
        response = salesforceClient.sObjectGetDeleted (args[7], args[8], args[9], args[10]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "sObjectGetUpdated") {
        println("-----Calling sObjectGetUpdated action-----");
        response = salesforceClient.sObjectGetUpdated (args[7], args[8], args[9], args[10]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "sObjectPlatformAction") {
        println("-----Calling sObjectPlatformAction action-----");
        response = salesforceClient.sObjectPlatformAction (args[7]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "sObjectRows") {
        println("-----Calling sObjectRows action-----");
        response = salesforceClient.sObjectRows (args[7], args[8], args[9]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "sObjectRowsByExternalId") {
        println("-----Calling sObjectRowsByExternalId action-----");
        response = salesforceClient.sObjectRowsByExternalId (args[7], args[8], args[9], args[10]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "listviewQueryPerformanceFeedback") {
        println("-----Calling listviewQueryPerformanceFeedback action-----");
        response = salesforceClient.listviewQueryPerformanceFeedback (args[7], args[8]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "query") {
        println("-----Calling query action-----");
        response = salesforceClient.query (args[7], args[8]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "queryAll") {
        println("-----Calling queryAll action-----");
        response = salesforceClient.queryAll (args[7], args[8]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "queryAllMore") {
        println("-----Calling queryAllMore action-----");
        response = salesforceClient.queryAllMore (args[7], args[8]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "queryMore") {
        println("-----Calling queryMore action-----");
        response = salesforceClient.queryMore (args[7], args[8]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "queryPerformanceFeedback") {
        println("-----Calling queryPerformanceFeedback action-----");
        response = salesforceClient.queryPerformanceFeedback (args[7], args[8]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "createRecord") {
        println("-----Calling createRecord action-----");
        json sampleCreateRecord = {"Name":"TestingBallerina"};
        response = salesforceClient.createRecord (args[7], "Account", sampleCreateRecord);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "createMultipleRecords") {
        println("-----Calling createMultipleRecords action-----");
        json sampleCreateMultipleRecords = {"records":[{"attributes":{"type":"Account", "referenceId":"ref1"}, "name":"SampleAccount1"}, {"attributes":{"type":"Account", "referenceId":"ref2"}, "name":"SampleAccount2"}]};
        response = salesforceClient.createMultipleRecords (args[7], "Account", sampleCreateMultipleRecords);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "delete") {
        println("-----Calling delete action-----");
        response = salesforceClient.delete (args[7], args[8], args[9]);
        println(response.getStatusCode());
    }

    if (args[0] == "retrieveFieldValues") {
        println("-----Calling retrieveFieldValues action-----");
        response = salesforceClient.retrieveFieldValues (args[7], args[8], args[9], args[10]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "retrieveFieldValuesFromExternalObject") {
        println("-----Calling retrieveFieldValuesFromExternalObject action-----");
        response = salesforceClient.retrieveFieldValuesFromExternalObject (args[7], args[8], args[9], args[10]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "retrieveStandardFieldValuesFromExternalObjectWithExternalId") {
        println("-----Calling retrieveStandardFieldValuesFromExternalObjectWithExternalId action-----");
        response = salesforceClient.retrieveStandardFieldValuesFromExternalObjectWithExternalId (args[7], args[8],
                                                                                                 args[9], args[10]);
        JSONResponse = response.getJsonPayload();
        println(JSONResponse.toString());
    }

    if (args[0] == "update") {
        println("-----Calling update action-----");
        json sampleUpdate = {"Name":"TestUpdate"};
        response = salesforceClient.update (args[7], "Account", args[8], sampleUpdate);
        println(response.getStatusCode());
    }

    if (args[0] == "upsert") {
        println("-----Calling upsert action-----");
        json sampleUpsert = {"Name":"TestUpdate", "Type":"New Customer"};
        response = salesforceClient.upsert (args[7], args[8], args[9], args[10], sampleUpsert);
        println(response.getStatusCode());
    }
}