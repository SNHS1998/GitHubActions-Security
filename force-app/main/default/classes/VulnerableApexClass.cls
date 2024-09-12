public class VulnerableApexClass {

    // SOQL Injection Vulnerability
    public static List<Account> getAccounts(String accountName) {
        String query = 'SELECT Id, Name FROM Account WHERE Name LIKE \'%' + accountName + '%\'';
        return Database.query(query); // Unchecked dynamic SOQL
    }

    // Unprotected DML operation vulnerability (Mass Assignment)
    public static void updateAccountIndustry(Map<Id, String> accountIdsToIndustry) {
        List<Account> accountsToUpdate = new List<Account>();
        
        for (Id accId : accountIdsToIndustry.keySet()) {
            Account acc = new Account(Id = accId, Industry = accountIdsToIndustry.get(accId));
            accountsToUpdate.add(acc);
        }
        
        try {
            update accountsToUpdate; // Unprotected DML operation
        } catch (DmlException e) {
            System.debug('DML Exception: ' + e.getMessage());
        }
    }
}
