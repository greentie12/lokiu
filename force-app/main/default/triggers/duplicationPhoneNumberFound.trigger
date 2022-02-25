trigger duplicationPhoneNumberFound on Quote__c (before insert) {
    List<Quote__c> quoteList = [SELECT Phone__c FROM Quote__c];
    for(Quote__c previous : quotelist) {
        for (Quote__c newOne : Trigger.new) {
            if (newOne.Phone__c == previous.Phone__c) {
                newOne.Phone__c.addError('We already have this number, sorry.');
            }
        }
    }

}