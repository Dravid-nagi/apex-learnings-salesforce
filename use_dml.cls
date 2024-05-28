public class AccountHandler {
    // Public static method to insert a new Account and return the inserted record
    public static Account insertNewAccount(String accountName) {
        // Check if the accountName is empty
        if (String.isBlank(accountName)) {
            // Return null if the accountName is empty
            return null;
        }

        // Create a new Account record
        Account newAccount = new Account(Name = accountName);

        try {
            // Attempt to insert the new Account record
            insert newAccount;
            // Return the inserted Account record
            return newAccount;
        } catch (DmlException e) {
            // Catch any DML exceptions and return null
            return null;
        }
    }
}
