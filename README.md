# Shipment Status Lightning Web Component

Overview
The Shipment Status Lightning Web Component (LWC) is designed to display the shipment status based on a tracking number. It integrates with an external service to fetch and display the current status of a shipment.

Component Features
Display the tracking number associated with a shipment.
Fetch and display the current shipment status.
Ability to refresh and clear the displayed status.
Integration with an external service to obtain status information.
Usage
Add the "Shipment Status" component to a Lightning App Page or Record Page.

Make sure the "Shipment__c" custom object is set up in your Salesforce org with the following fields:

Recipient_Name__c: Custom field to store the name of the recipient.
Tracking_Number__c: Custom field to store the tracking number associated with the shipment.
Configure the component to work with your Salesforce org by setting up appropriate API integrations and ensuring that the necessary permissions are in place.

When viewing a record that has a "Shipment__c" related to it, the component will automatically display the associated tracking number.

Click the "FETCH STATUS" button to fetch and display the current status of the shipment based on the tracking number.

To clear the displayed status and refresh, click the "RESET" button.

Installation
To use this component in your Salesforce org, follow these steps:

Clone or download this repository to your local machine.

Deploy the component to your Salesforce org using Salesforce CLI, Visual Studio Code, or any other deployment tool of your choice.

Set up the necessary API integrations and permissions to allow the component to interact with external services, if required.

Add the "Shipment Status" component to your Lightning App Page or Record Page.

Configure the component by providing necessary parameters and mappings to work with your org's data.

Author
[Avinash Gadgil]
Email: [gadgilxx@gmail.com]

