@isTest
private class ShipmentStatusIntegrationTest {

    // Test method for a successful API call
    @isTest
    static void testGetShipmentStatus_Success() {
       
        Test.setMock(HttpCalloutMock.class, new MockHttpResponse());


        String result = ShipmentStatusIntegration.getShipmentStatus('123456');

        
        System.assertEquals('Shipped- On Time', result);
    }

    // Test method for a failed API call
    @isTest
    static void testGetShipmentStatus_Failure() {
    
        Test.setMock(HttpCalloutMock.class, new MockHttpResponse(404, 'Not Found'));

    
        String result = ShipmentStatusIntegration.getShipmentStatus('7890');

     
        System.assertEquals('Error - Unable to fetch status', result);
    }

    // Test method for a missing tracking number
    @isTest
    static void testGetShipmentStatus_MissingTrackingNumber() {
       
        String result = ShipmentStatusIntegration.getShipmentStatus(null);

 
        System.assertEquals('Error - Tracking number is Missing', result);
    }

    // Helper class to mock HTTP responses
    private class MockHttpResponse implements HttpCalloutMock {
        private Integer statusCode;
        private String statusReason;

     
        MockHttpResponse() {
            this.statusCode = 200;
            this.statusReason = 'OK';
        }

        MockHttpResponse(Integer statusCode, String statusReason) {
            this.statusCode = statusCode;
            this.statusReason = statusReason;
        }

        public HTTPResponse respond(HTTPRequest req) {
            HttpResponse res = new HttpResponse();
            res.setStatusCode(statusCode);
            res.setStatus(statusReason);
            res.setBody('Shipped- On Time'); 
            return res;
        }
    }
}
