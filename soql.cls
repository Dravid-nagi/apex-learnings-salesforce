public class ContactSearch {
    // Public static method to search for Contacts based on last name and mailing postal code
    public static List<Contact> searchForContacts(String lastName, String postalCode) {
        // Query the Contact records with matching last name and mailing postal code
        List<Contact> contacts = [
            SELECT Id, Name 
            FROM Contact 
            WHERE LastName = :lastName AND MailingPostalCode = :postalCode
        ];
        
        // Return the list of found contacts
        return contacts;
    }
}
