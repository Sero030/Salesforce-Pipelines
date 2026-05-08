// Sample Apex Class to manage Accounts
public with sharing class AccountHandler {
    
    // Method to create an account
    public static Account createAccount(String name, String phone) {
        Account acc = new Account(Name = name, Phone = phone);
        insert acc;
        return acc;
    }
    
    // Method to get account by name
    public static Account getAccount(String name) {
        return [SELECT Id, Name, Phone FROM Account WHERE Name = :name LIMIT 1];
    }
}
