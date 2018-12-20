public class ExpenseController {
    @AuraEnabled 
    public static string createExpenses(Expense__c[] exp){

        if(exp!=null){
            System.debug('===exp==='+exp);
            insert exp;
           return exp[0].id; 
        }
       return null; 
        
    }

}