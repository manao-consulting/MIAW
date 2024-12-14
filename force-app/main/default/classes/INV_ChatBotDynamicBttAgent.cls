/**
 * @description : Invocable class, used to return if the bot is call in or out of the business hours
**/
public with sharing class INV_ChatBotDynamicBttAgent {

    /**
     * @description : invocable variable
     **/
    public class WRP_DynamicButtonVariables { 
        @InvocableVariable( required=true ) 
        public Boolean isWithinBH; 
        @InvocableVariable( required=true ) 
        public String listButtonIsWithinBH; 
        @InvocableVariable( required=true ) 
        public String listButtonIsNotWithinBH;
    }

    /**
    * @description : based on the business hours check the set of button to show 
    * @param variablesDB : variables coming from the bot
    * @return List<List<String>> return the list of 
    **/
    @InvocableMethod(label='Get dynamic button based on business hours')
    public static List<List<String>> isTotransfertToAgent(List<WRP_DynamicButtonVariables> variablesDB) {
        list<String> result = new List<String>();  
        List<List<String>> results = new List<List<String>>();
        if(variablesDB.get(0).isWithinBH){
            result = variablesDB.get(0).listButtonIsWithinBH.split(',');
        } else {
            result = variablesDB.get(0).listButtonIsNotWithinBH.split(',');
        }
        results.add(result);

        return results;
    }
}