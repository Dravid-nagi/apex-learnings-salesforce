public class SObjectProcessor {
    // Method to process a list of sObjects
    public static void processRecords(List<sObject> records) {
        // Loop through each sObject in the list
        for (sObject record : records) {
            // Check if the sObject is an Account
            if (record instanceof Account) {
                // Cast the sObject to an Account
                Account acc = (Account) record;
                // Update the Name field
                acc.Name = acc.Name + ' - Updated';
                System.debug('Updated Account: ' + acc.Name);
            }
            // Check if the sObject is a Contact
            else if (record instanceof Contact) {
                // Cast the sObject to a Contact
                Contact con = (Contact) record;
                // Update the LastName field
                con.LastName = con.LastName + ' - Updated';
                System.debug('Updated Contact: ' + con.LastName);
            }
        }
        
        // Perform an update DML operation on the list of sObjects
        // This will save the changes made to the records
        update records;
    }
}
