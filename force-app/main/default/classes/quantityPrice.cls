public class quantityPrice {
    public static decimal quantityPrice(decimal price, integer quantity){
        
        price = 1.25;
        decimal d = decimal.valueOf(quantity);
        quantity = 5;
        decimal quanPrice = quantity * price;
        
        for(List<Part__c> partList : [SELECT Price__c FROM Part__c ]){
            System.debug('The size of the partList is ' + partList.size() + '.');

            Integer innerLoopIterations = 0;
    			for(Part__c p : partList) {
        			innerLoopIterations += 1;
    			}
    
    	System.debug('The nested enhanced for loop ran ' + innerLoopIterations + ' times.');
		}

		System.debug('The amount of SOQL queries executed in this transaction is ' + Limits.getQueries() + '.');
        
        System.debug('Price' + quanPrice);
        return quanPrice;
        	
    }
}