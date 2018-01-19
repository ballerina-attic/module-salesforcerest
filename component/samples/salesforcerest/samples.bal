import org.wso2.ballerina.connectors.salesforcerest;
import ballerina.net.http;

function main (string[] args) {

    endpoint<salesforcerest:ClientConnector> salesforceClient {
        create salesforcerest:ClientConnector(args[1], args[2], args[3], args[4], args[5]);
    }

    http:Response response = {};
    json JSONResponse;
    http:HttpConnectorError e;

    if (args[0] == "describeGlobal") {
        println("-----Calling describeGlobal action-----");
        string apiVersion = args[6];
        response, e = salesforceClient.describeGlobal(apiVersion);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectDescribe") {
        println("-----Calling sObjectDescribe action-----");
        string apiVersion = args[6];
        string sobjectName = args[7];
        response, e = salesforceClient.sObjectDescribe (sobjectName, apiVersion);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "listAvailableApiVersion") {
        println("-----Calling listAvailableApiVersion action-----");
        response, e = salesforceClient.listAvailableApiVersion ();
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "listOrganizationLimits") {
        println("-----Calling listOrganizationLimits action-----");
        string apiVersion = args[6];
        response, e = salesforceClient.listOrganizationLimits (apiVersion);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "listResourcesByApiVersion") {
        println("-----Calling listResourcesByApiVersion action-----");
        string requestingApiVersion = args[6];
        response, e = salesforceClient.listResourcesByApiVersion (requestingApiVersion);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectBasicInfo") {
        println("-----Calling sObjectBasicInfo action-----");
        string sobjectName = args[7];
        string apiVersion = args[6];
        response, e = salesforceClient.sObjectBasicInfo (sobjectName, apiVersion);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectGetDeleted") {
        println("-----Calling sObjectGetDeleted action-----");
        string apiVersion = args[6];
        string sobjectName = args[7];
        string startTime = args[8];
        string endTime = args[9];
        response, e = salesforceClient.sObjectGetDeleted (apiVersion, sobjectName, startTime, endTime);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectGetUpdated") {
        println("-----Calling sObjectGetUpdated action-----");
        string apiVersion = args[6];
        string sobjectName = args[7];
        string startTime = args[8];
        string endTime = args[9];
        response, e = salesforceClient.sObjectGetUpdated (apiVersion, sobjectName, startTime, endTime);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectPlatformAction") {
        println("-----Calling sObjectPlatformAction action-----");
        string apiVersion = args[6];
        response, e = salesforceClient.sObjectPlatformAction (apiVersion);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectRows") {
        println("-----Calling sObjectRows action-----");
        string apiVersion = args[6];
        string sobjectName = args[7];
        string rowId = args[8];
        response, e = salesforceClient.sObjectRows (apiVersion, sobjectName, rowId);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectRowsByExternalId") {
        println("-----Calling sObjectRowsByExternalId action-----");
        string apiVersion = args[6];
        string sobjectName = args[7];
        string fieldId = args[8];
        string fieldValue = args[9];
        response, e = salesforceClient.sObjectRowsByExternalId (apiVersion, sobjectName, fieldId, fieldValue);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "listviewQueryPerformanceFeedback") {
        println("-----Calling listviewQueryPerformanceFeedback action-----");
        string apiVersion = args[6];
        string listViewId = args[7];
        response, e = salesforceClient.listviewQueryPerformanceFeedback (apiVersion, listViewId);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "query") {
        println("-----Calling query action-----");
        string apiVersion = args[6];
        string queryString = args[7];
        response, e = salesforceClient.query (apiVersion, queryString);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "queryAll") {
        println("-----Calling queryAll action-----");
        string apiVersion = args[6];
        string queryString = args[7];
        response, e = salesforceClient.queryAll (apiVersion, queryString);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "queryAllMore") {
        println("-----Calling queryAllMore action-----");
        string apiVersion = args[6];
        string nextRecordsUrl = args[7];
        response, e = salesforceClient.queryAllMore (apiVersion, nextRecordsUrl);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "queryMore") {
        println("-----Calling queryMore action-----");
        string apiVersion = args[6];
        string nextRecordsUrl = args[7];
        response, e = salesforceClient.queryMore (apiVersion, nextRecordsUrl);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "queryPerformanceFeedback") {
        println("-----Calling queryPerformanceFeedback action-----");
        string apiVersion = args[6];
        string queryString = args[7];
        response, e = salesforceClient.queryPerformanceFeedback (apiVersion, queryString);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "createRecord") {
        println("-----Calling createRecord action-----");
        string apiVersion = args[6];
        json sampleCreateRecord = {"Name":"TestingBallerina"};
        response, e = salesforceClient.createRecord (apiVersion, "Account", sampleCreateRecord);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "createMultipleRecords") {
        println("-----Calling createMultipleRecords action-----");
        string apiVersion = args[6];
        json sampleCreateMultipleRecords = {"records":[{"attributes":{"type":"Account", "referenceId":"ref1"}, "name":"SampleAccount1"}, {"attributes":{"type":"Account", "referenceId":"ref2"}, "name":"SampleAccount2"}]};
        response, e = salesforceClient.createMultipleRecords (apiVersion, "Account", sampleCreateMultipleRecords);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "delete") {
        println("-----Calling delete action-----");
        string apiVersion = args[6];
        string sobjectName = args[7];
        string deleteId = args[8];
        response, e = salesforceClient.delete (apiVersion, sobjectName, deleteId);
        if(e == null) {
            println(response.getStatusCode());
        } else {
            println(e);
        }
    }

    if (args[0] == "retrieveFieldValues") {
        println("-----Calling retrieveFieldValues action-----");
        string apiVersion = args[6];
        string sobjectName = args[7];
        string rowId = args[8];
        string fields = args[9];
        response, e = salesforceClient.retrieveFieldValues (apiVersion, sobjectName, rowId, fields);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "retrieveFieldValuesFromExternalObject") {
        println("-----Calling retrieveFieldValuesFromExternalObject action-----");
        string apiVersion = args[6];
        string sobjectName = args[7];
        string rowId = args[8];
        string fields = args[9];
        response, e = salesforceClient.retrieveFieldValuesFromExternalObject (apiVersion, sobjectName, rowId, fields);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "retrieveStandardFieldValuesFromExternalObjectWithExternalId") {
        println("-----Calling retrieveStandardFieldValuesFromExternalObjectWithExternalId action-----");
        string apiVersion = args[6];
        string sobjectName = args[7];
        string externalId = args[8];
        string fields = args[9];
        response, e = salesforceClient.retrieveStandardFieldValuesFromExternalObjectWithExternalId (apiVersion, sobjectName,
                                                                                                    externalId, fields);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "update") {
        println("-----Calling update action-----");
        string apiVersion = args[6];
        string recordId = args[7];
        json sampleUpdate = {"Name":"TestUpdate"};
        response, e = salesforceClient.update (apiVersion, "Account", recordId, sampleUpdate);
        if(e == null) {
            println(response.getStatusCode());
        } else {
            println(e);
        }
    }

    if (args[0] == "upsert") {
        println("-----Calling upsert action-----");
        string apiVersion = args[6];
        string sobject = args[7];
        string externalField = args[8];
        string fieldValueId = args[9];
        json sampleUpsert = {"Name":"TestUpdate", "Type":"New Customer"};
        response, e = salesforceClient.upsert (apiVersion, sobject, externalField, fieldValueId, sampleUpsert);
        if(e == null) {
            println(response.getStatusCode());
        } else {
            println(e);
        }
    }
}