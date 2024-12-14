/**
 * @description : Invocable class, used to return if the bot is call in or out of the business hours
**/
public with sharing class INV_ChatBotCheckBusinessHours {

    /**
    * @description : calculate if the bot is in the business hours
    * @param businessHoursNames : Name of the business hours we need to check
    * @return List<Boolean>
    **/
    @invocableMethod(label='Is Within Business Hours')
    public static List<Boolean> isInRange(List<String> businessHoursNames){
        //get business hours 
        String bhName = String.valueOf(businessHoursNames[0]);
        BusinessHours bh = [SELECT id FROM BusinessHours WHERE name= :bhName WITH SECURITY_ENFORCED LIMIT 1];
        //Create Datetime today
        DateTime targetTime = Datetime.Now();
        //Is Within
        Boolean isWithin = BusinessHours.isWithin(bh.Id, targetTime);
        return new List<Boolean>{isWithin};
    }
}