global with sharing class InvoiceUtilities {
//class method to re-number Line Items for a given Invoice number
//returns a string that indicates succes or failure
 
  
    webservice static String renumberLineItems(String invoiceName)
    {
        //Create a copy of the target Invoice object and its Line Items.

        Invoice__c invoice = [SELECT i.Name, (SELECT Name From Line_Items__r ORDER BY Name)
                              From Invoice__c i
                              Where i.Name = :invoiceName LIMIT 1];
        //Loop through each Line Item, re-numbering as you go.
        Integer i = 1;
        for(Line_Item__c item : invoice.Line_Items__r)
        {
            item.Name = String.valueOf(i);
            System.debug(item.Name);
            i++;
        }
        
        //Update the Line Items in one transaction, rollback if any problem
        //and return error messages to calling enviroment
        try
        {
            Database.update(invoice.Line_Items__r);    
        }
        Catch (DmlException e)
        {
            return e.getMessage();
        }
        
        //On success, return a message to the calling program.
       
        
        return 'Line items renumbered successfully.';
            
    }                       
}