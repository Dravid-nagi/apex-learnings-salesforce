public class ContactAndLeadSearch {
    // Public static method to search for Contacts and Leads based on first or last name
    public static List<List<sObject>> searchContactsAndLeads(String searchString) {
        // Perform a SOSL search for Contacts and Leads with matching first or last name
        List<List<sObject>> results = [FIND :searchString IN Name Fields RETURNING Contact(Id, FirstName, LastName), Lead(Id, FirstName, LastName)];

        // Return the search results
        return results;
    }
}
