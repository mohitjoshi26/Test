trigger AccountTrigger on Account (before insert, after update, before update) {

    
    if(trigger.isBefore && trigger.isInsert){
        
       AllAccountTriggerHandler.AccountAddressUpdate(trigger.new);
       AllAccountTriggerHandler.AccountRatingPhoneUpdate(trigger.new);
       
    }
    
    if(trigger.isBefore && trigger.isUpdate){
    	AccountTriggerHandler.updateRatingOnServiceChecked(Trigger.new, Trigger.oldMap);
    }
}