import org.wso2.ballerina.connectors.salesforcerest;
import ballerina.net.http;

function main (string[] args) {

    endpoint<salesforcerest:ClientConnector> salesforceClient {
        create salesforcerest:ClientConnector(args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
    }

    http:Response response = {};
    json JSONResponse;
    http:HttpConnectorError e;

    if (args[0] == "describeGlobal") {
        println("-----Calling describeGlobal action-----");
        response, e = salesforceClient.describeGlobal(args[8]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectDescribe") {
        println("-----Calling sObjectDescribe action-----");
        response, e = salesforceClient.sObjectDescribe (args[9], args[8]);
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
        response, e = salesforceClient.listOrganizationLimits (args[8]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "listResourcesByApiVersion") {
        println("-----Calling listResourcesByApiVersion action-----");
        response, e = salesforceClient.listResourcesByApiVersion (args[8]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectBasicInfo") {
        println("-----Calling sObjectBasicInfo action-----");
        response, e = salesforceClient.sObjectBasicInfo (args[9], args[8]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectGetDeleted") {
        println("-----Calling sObjectGetDeleted action-----");
        response, e = salesforceClient.sObjectGetDeleted (args[8], args[9], args[10], args[11]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectGetUpdated") {
        println("-----Calling sObjectGetUpdated action-----");
        response, e = salesforceClient.sObjectGetUpdated (args[8], args[9], args[10], args[11]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectPlatformAction") {
        println("-----Calling sObjectPlatformAction action-----");
        response, e = salesforceClient.sObjectPlatformAction (args[8]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectRows") {
        println("-----Calling sObjectRows action-----");
        response, e = salesforceClient.sObjectRows (args[8], args[9], args[10]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "sObjectRowsByExternalId") {
        println("-----Calling sObjectRowsByExternalId action-----");
        response, e = salesforceClient.sObjectRowsByExternalId (args[8], args[9], args[10], args[11]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "listviewQueryPerformanceFeedback") {
        println("-----Calling listviewQueryPerformanceFeedback action-----");
        response, e = salesforceClient.listviewQueryPerformanceFeedback (args[8], args[9]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "query") {
        println("-----Calling query action-----");
        response, e = salesforceClient.query (args[8], args[9]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "queryAll") {
        println("-----Calling queryAll action-----");
        response, e = salesforceClient.queryAll (args[8], args[9]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "queryAllMore") {
        println("-----Calling queryAllMore action-----");
        response, e = salesforceClient.queryAllMore (args[8], args[9]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "queryMore") {
        println("-----Calling queryMore action-----");
        response, e = salesforceClient.queryMore (args[8], args[9]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "queryPerformanceFeedback") {
        println("-----Calling queryPerformanceFeedback action-----");
        response, e = salesforceClient.queryPerformanceFeedback (args[8], args[9]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "createRecord") {
        println("-----Calling createRecord action-----");
        json sampleCreateRecord = {"Name":"TestingBallerina"};
        response, e = salesforceClient.createRecord (args[8], "Account", sampleCreateRecord);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "createMultipleRecords") {
        println("-----Calling createMultipleRecords action-----");
        json sampleCreateMultipleRecords = {"records":[{"attributes":{"type":"Account", "referenceId":"ref1"}, "name":"SampleAccount1"}, {"attributes":{"type":"Account", "referenceId":"ref2"}, "name":"SampleAccount2"}]};
        response, e = salesforceClient.createMultipleRecords (args[8], "Account", sampleCreateMultipleRecords);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "delete") {
        println("-----Calling delete action-----");
        response, e = salesforceClient.delete (args[8], args[9], args[10]);
        if(e == null) {
            println(response.getStatusCode());
        } else {
            println(e);
        }
    }

    if (args[0] == "retrieveFieldValues") {
        println("-----Calling retrieveFieldValues action-----");
        response, e = salesforceClient.retrieveFieldValues (args[8], args[9], args[10], args[11]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "retrieveFieldValuesFromExternalObject") {
        println("-----Calling retrieveFieldValuesFromExternalObject action-----");
        response, e = salesforceClient.retrieveFieldValuesFromExternalObject (args[8], args[9], args[10], args[11]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "retrieveStandardFieldValuesFromExternalObjectWithExternalId") {
        println("-----Calling retrieveStandardFieldValuesFromExternalObjectWithExternalId action-----");
        response, e = salesforceClient.retrieveStandardFieldValuesFromExternalObjectWithExternalId (args[8], args[9],
                                                                                                 args[10], args[11]);
        if(e == null) {
            JSONResponse = response.getJsonPayload();
            println(JSONResponse.toString());
        } else {
            println(e);
        }
    }

    if (args[0] == "update") {
        println("-----Calling update action-----");
        json sampleUpdate = {"Name":"TestUpdate"};
        response, e = salesforceClient.update (args[8], "Account", args[9], sampleUpdate);
        if(e == null) {
            println(response.getStatusCode());
        } else {
            println(e);
        }
    }

    if (args[0] == "upsert") {
        println("-----Calling upsert action-----");
        json sampleUpsert = {"Name":"TestUpdate", "Type":"New Customer"};
        response, e = salesforceClient.upsert (args[8], args[9], args[10], args[11], sampleUpsert);
        if(e == null) {
            println(response.getStatusCode());
        } else {
            println(e);
        }
    }
}