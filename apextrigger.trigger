trigger AccountAddressTrigger on Account (before insert, before update) {
    // Iterate through the trigger new list
    for (Account acc : Trigger.new) {
        // Check if Match Billing Address is true
        if (acc.Match_Billing_Address__c) {
            // Set Shipping Postal Code to match Billing Postal Code
            acc.ShippingPostalCode = acc.BillingPostalCode;
        }
    }
}
