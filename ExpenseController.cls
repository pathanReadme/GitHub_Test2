public class ExpenseController {
    @AuraEnabled 
    public static string createExpenses(Expense__c[] exp){
        
        System.debug('-----'+exp);

        if(exp!=null){
            System.debug('--eneter into if block');
            insert exp;
           return exp[0].id; 
        }
       return null; 
        
    }

}
