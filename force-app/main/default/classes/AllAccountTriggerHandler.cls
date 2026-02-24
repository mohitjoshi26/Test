public class AllAccountTriggerHandler {
    
    
    public static void AccountAddressUpdate(List<Account> a){
         for(Account acc:a){
            
            if(acc.ShippingStreet==null){
                if(acc.BillingStreet != null){
                     acc.ShippingStreet=acc.BillingStreet;
                }
            }
            if(acc.ShippingCity==null)
                //acc.ShippingCity=acc.BillingCity;
            if(acc.ShippingState==null)
                acc.ShippingState=acc.BillingState;
            if(acc.ShippingCountry==null)
                acc.ShippingCountry=acc.BillingCountry;
    }
    }
    
    public static void AccountRatingPhoneUpdate(List<Account> accrat){
        
        for(Account accrec:accrat){
            if(accrec.Rating=='Warm'){
                if(accrec.Phone==null)
                accrec.Phone='1234567890';
        }
    }
    }   
}